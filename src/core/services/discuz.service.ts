import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/core/services/prisma.service';
import { Prisma } from '@prisma/client';
import { UsersService } from 'src/users/users.service';

@Injectable()
export class DiscuzService {
    constructor(
        private prisma: PrismaService,
        private usersService: UsersService,

    ) { }

    async threads({ pageIndex, pageSize, category, tags, order }) {
        if (pageSize > 30) pageSize = 30;
        let resp = {
            tags: [],
            total: null,
            data: null
        }
        let target: any = {
            select: {
                tid: true,
                subject: true,
                dateline: true,
                views: true,
                replies: true,
                recommend_add: true,
                highlight: true,
                fid: true,
                closed: true
            },
            where: {
                NOT: {
                    displayorder: {
                        lt: 0
                    }
                }
            },
            skip: (pageIndex - 1) * pageSize,
            take: pageSize
        }
        let countTarget = {
            where: {
                NOT: {
                    displayorder: {
                        lt: 0
                    }
                }
            }
        }
        if (typeof order != 'undefined') {
            switch (order) {
                case 0:
                    target['orderBy'] = {
                        lastpost: 'desc'
                    }
                    break;
                case 1:
                    target['orderBy'] = {
                        dateline: 'desc'
                    }
                    break;

                default:
                    break;
            }
        }
        if (typeof tags != 'undefined') {
            console.log('tags:', tags);
        }
        if (typeof category != 'undefined' && !isNaN(category)) {
            target.where['fid'] = category
            countTarget.where['fid'] = category
            // 获取分类信息
            let board = await this.prisma.pre_forum_forum.findFirst({
                where: {
                    fid: category
                },
                select: {
                    name: true
                }
            })
            resp['tags'].push({
                type: 'category',
                text: board.name,
                id: category
            })
        }
        resp.total = await this.prisma.pre_forum_thread.count(countTarget);
        resp.data = await this.prisma.pre_forum_thread.findMany(target);

        // 获取标签和分类信息
        for (let index = 0; index < resp.data.length; index++) {
            let item = resp.data[index];
            item['tags'] = []
            item['users'] = {
                list: [],
                count: 0
            }
            // 添加分类
            let board = await this.prisma.pre_forum_forum.findFirst({
                where: {
                    fid: item.fid
                },
                select: {
                    name: true
                }
            })
            item['tags'].push({
                type: 'category',
                text: board.name,
                id: item.fid
            })

            // 添加标签 和 参与用户信息
            let posts = await this.prisma.pre_forum_post.findMany({
                where: {
                    tid: item.tid,
                },
                orderBy: {
                    dateline: 'asc'
                },
                select: {
                    tags: true,
                    authorid: true,
                    author: true,
                },
                distinct: "authorid",
            });
            item.users.count = posts.length
            for (let index = 0; index < (posts.length <= 5 ? posts.length : 4); index++) {
                const post = posts[index];
                item.users.list.push({
                    uid: post.authorid,
                    username: post.author
                })
            }
            if (typeof posts[0] != 'undefined') {
                if (posts[0].tags.length > 2) {
                    let array = posts[0].tags.split('\t');
                    for (let index = 0; index < array.length; index++) {
                        const tagStr = array[index];
                        if (tagStr.length > 3)
                            item['tags'].push({
                                type: 'tag',
                                text: tagStr.split(',')[1],
                                id: tagStr.split(',')[0]
                            })
                    }
                }
            }

        }

        return resp
    }

    async thread({ pageIndex, pageSize, tid }) {
        if (pageSize > 30) pageSize = 30;
        let list = await this.prisma.pre_forum_post.findMany({
            where: {
                tid: tid,
            },
            select: {
                author: true,
                authorid: true,
                dateline: true,
                message: true,
                attachment: true,
                subject: true,
            },
            skip: (pageIndex - 1) * pageSize,
            take: pageSize
        });
        let total = await this.prisma.pre_forum_post.count({
            where: {
                tid: tid,
            },
        })
        for (let index = 0; index < list.length; index++) {
            const item = list[index];
            if (item.attachment) {
                let reg = /\[attach\][0-9]+\[\/attach\]/g;
                let attachList = item.message.match(reg);
                if (attachList != null)
                    for (let index = 0; index < attachList.length; index++) {
                        let element = attachList[index]
                        let aid = Number(element.replace('[attach]', '').replace('[/attach]', ''))
                        let attachment = await this.getAttachment(aid);
                        item.message = item.message.replace(element, attachment)
                    }
            }
        }
        return {
            list: list,
            total: total,
            pageIndex: pageIndex,
            pageSize: pageSize
        }
    }

    async threadInfo(tid) {
        let thread = await this.prisma.pre_forum_thread.findUnique({
            where: {
                tid: tid
            },
            select: {
                tid: true,
                subject: true,
                recommend_add: true,
                favtimes: true,
                dateline: true,
                views: true,
                replies: true,
                author: true,
                authorid: true
            }
        })
        let total = await this.prisma.pre_forum_post.count({
            where: {
                tid: tid,
            },
        })
        thread = Object.assign(thread, { total: total })
        return thread
    }

    async threadPosts({ index, count, tid }) {
        if (count > 30) count = 30;
        let list = await this.prisma.pre_forum_post.findMany({
            where: {
                tid: tid,
            },
            select: {
                author: true,
                authorid: true,
                dateline: true,
                message: true,
                attachment: true,
                subject: true,
            },
            skip: index - 1,
            take: count
        });

        for (let index = 0; index < list.length; index++) {
            const item = list[index];
            // 解析附件地址
            if (item.attachment) {
                let reg = /\[attach\][0-9]+\[\/attach\]/g;
                let attachList = item.message.match(reg);
                if (attachList != null)
                    for (let index = 0; index < attachList.length; index++) {
                        let element = attachList[index]
                        let aid = Number(element.replace('[attach]', '').replace('[/attach]', ''))
                        let attachment = await this.getAttachment(aid);
                        item.message = item.message.replace(element, attachment)
                    }
            }
            // // 解析视频地址
            // if (item.message.indexOf('bilibili.com') > -1) {

            // }
        }
        // https://www.bilibili.com/video/BV1tp4y1H7xc
        // <iframe src="//player.bilibili.com/player.html?aid=971963556&bvid=BV1tp4y1H7xc&cid=306734934&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
        // http://player.bilibili.com/player.html?bvid=BV1tp4y1H7xc
        return list
    }


    async getAttachment(aid) {
        let target = {
            where: {
                aid: aid
            }
        }
        let attachmentIndex = await this.prisma.pre_forum_attachment.findUnique(target)
        if (attachmentIndex != null) {
            //prisma bug：https://github.com/prisma/prisma/issues/4981
            let attachment;
            target['select'] = {
                aid: true,
                isimage: true,
                attachment: true,
                description: true,
                filename: true,
                filesize: true,
                dateline: true,
            }
            switch (attachmentIndex.tableid) {
                case 0:
                    attachment = await this.prisma.pre_forum_attachment_0.findUnique(target)
                    break;
                case 1:
                    attachment = await this.prisma.pre_forum_attachment_1.findUnique(target)
                    break;
                case 2:
                    attachment = await this.prisma.pre_forum_attachment_2.findUnique(target)
                    break;
                case 3:
                    attachment = await this.prisma.pre_forum_attachment_3.findUnique(target)
                    break;
                case 4:
                    attachment = await this.prisma.pre_forum_attachment_4.findUnique(target)
                    break;
                case 5:
                    attachment = await this.prisma.pre_forum_attachment_5.findUnique(target)
                    break;
                case 6:
                    attachment = await this.prisma.pre_forum_attachment_6.findUnique(target)
                    break;
                case 7:
                    attachment = await this.prisma.pre_forum_attachment_7.findUnique(target)
                    break;
                case 8:
                    attachment = await this.prisma.pre_forum_attachment_8.findUnique(target)
                    break;
                case 9:
                    attachment = await this.prisma.pre_forum_attachment_9.findUnique(target)
                    break;
                default:
                    break;
            }
            if (typeof attachment != 'undefined') {
                if (attachment.isimage) {
                    return `<img class="lazyload" data-src="https://arduino.cn/data/attachment/forum/${attachment.attachment}" data-alt="${attachment.description}">`
                    // return `<img src="https://arduino.cn/data/attachment/forum/${attachment.attachment}" data-alt="${attachment.description}">`
                }
                else {
                    return `暂不支持附件${aid}下载~~`
                }
            }
        }
        return `~~附件${aid}已被删除~~`
    }

    getVideoIframe(url) {
        let reg = /[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/;

    }

    async user(params: { uid }) {
        let countinfo = await this.prisma.pre_common_member_count.findUnique({
            where: {
                uid: params.uid
            }
        })
        let baseinfo = await this.prisma.pre_common_member.findUnique({
            where: {
                uid: params.uid
            }
        })
        return {
            username: baseinfo.username,
            grounp: baseinfo.groupid,
            threads: countinfo.threads,
            posts: countinfo.posts,
            follower: countinfo.follower,
            following: countinfo.following
        }
    }

    async tags(num = 15) {
        if (num > 30) num = 30
        return this.prisma.pre_common_tag.findMany({
            take: num
        });
    }

    async categorys(num = 15) {
        if (num > 30) num = 30
        return this.prisma.pre_forum_forum.findMany({
            orderBy: {
                yesterdayposts: 'desc'
            },
            where: {
                status: true,
                NOT: {
                    type: 'group'
                }
            },
            take: num
        });
    }


    async search({ keyword, pageIndex, pageSize }) {
        let list = await this.prisma.pre_forum_post.findMany({
            where: {
                first: true,
                OR: [
                    {
                        subject: { contains: keyword },
                    },
                    {
                        message: { contains: keyword },
                    },
                ],
            },
            select: {
                subject: true,
                message: true,
                tid: true,
                dateline: true,
            },
            skip: (pageIndex - 1) * pageSize,
            take: pageSize
        })
        let total = await this.prisma.pre_forum_post.count({
            where: {
                first: true,
                OR: [
                    {
                        subject: { contains: keyword },
                    },
                    {
                        message: { contains: keyword },
                    },
                ],
            }
        });
        return {
            data: list,
            total: total,
        }
    }

    async newThread({ uid, fid, subject, content }) {
        let user = await this.usersService.findUserByUid(uid)
        let thread: Prisma.pre_forum_threadCreateInput = {
            fid: fid,
            author: user.username,
            authorid: uid,
            subject: subject,
            dateline: new Date().getTime(),
            lastpost: new Date().getTime(),
            lastposter: user.username
        }
        let newthread = await this.prisma.pre_forum_thread.create({
            data: thread
        })
        await this.newPost({ user, thread, subject, content })
        return {
            code: 0,
            message: '主题创建成功',
            detail: {
                tid: newthread.tid
            }
        }
    }

    async newPost({ user, thread, subject = '', content }) {
        let pid = (await this.prisma.pre_forum_post.aggregate({
            max: {
                pid: true
            }
        })).max.pid + 1
        console.log(pid);

        let post = {
            pid: pid,
            fid: thread.fid,
            tid: thread.tid,
            first: true,
            author: user.username,
            authorid: user.uid,
            subject: subject,
            dateline: Math.floor(new Date().getTime() / 1000),
            message: content,
            tags: ''
        }
        return await this.prisma.pre_forum_post.upsert({
            where: {
                pid: pid,
            },
            update: post,
            create: post
        })
    }

    async getFavoriteAndLikeState(uid, tid) {
        let favorite = await this.prisma.pre_home_favorite.findFirst({
            where: {
                uid: uid,
                id: tid,
                idtype: 'tid'
            }
        })

        let like = await this.prisma.pre_forum_memberrecommend.findFirst({
            where: {
                recommenduid: uid,
                tid: tid,
            }
        })
        return {
            code: 0,
            detail: {
                favorite: favorite != null,
                like: like != null
            }
        }
    }

    async addFavorite(uid, tid) {
        let favorite = await this.prisma.pre_home_favorite.findFirst({
            where: {
                uid: uid,
                id: tid,
                idtype: 'tid'
            },
            select: {
                favid: true
            }
        })
        await this.prisma.pre_home_favorite.upsert({
            where: {
                favid: favorite.favid
            },
            create: {
                uid: uid,
                id: tid,
                idtype: 'tid',
                description: '',
                title: '',
                spaceuid: null,
                dateline: Math.floor(new Date().getTime() / 1000),
            },
            update: {
                uid: uid,
                id: tid,
                idtype: 'tid',
                description: '',
                title: '',
                spaceuid: null,
                dateline: Math.floor(new Date().getTime() / 1000),
            }
        })
        return {
            code: 0,
            detail: {}
        }
    }

    async addLike(uid, tid) {
        let like = await this.prisma.pre_forum_memberrecommend.findFirst({
            where: {
                recommenduid: uid,
                tid: tid,
            },
            select: {
                id: true
            }
        })
        await this.prisma.pre_forum_memberrecommend.upsert({
            where: {
                id: like.id
            },
            create: {
                recommenduid: uid,
                tid: tid,
                dateline: Math.floor(new Date().getTime() / 1000),
            },
            update: {
                recommenduid: uid,
                tid: tid,
                dateline: Math.floor(new Date().getTime() / 1000),
            }
        })
        return {
            code: 0,
            detail: {}
        }
    }
}
