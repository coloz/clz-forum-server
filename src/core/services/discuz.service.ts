import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/core/services/prisma.service';

@Injectable()
export class DiscuzService {
    constructor(private prisma: PrismaService) { }

    async threads(params: {
        pageIndex, pageSize, category, tags, order
    }) {
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
            skip: (params.pageIndex - 1) * params.pageSize,
            take: params.pageSize
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
        if (typeof params.order != 'undefined') {
            switch (params.order) {
                case '0':
                    target['orderBy'] = {
                        lastpost: 'desc'
                    }
                    break;
                case '1':
                    target['orderBy'] = {
                        dateline: 'desc'
                    }
                    break;

                default:
                    break;
            }
        }
        if (typeof params.tags != 'undefined') {
            console.log(params.tags);
        }
        if (typeof params.category != 'undefined' && !isNaN(params.category)) {
            target.where['fid'] = params.category
            countTarget.where['fid'] = params.category
            // 获取分类信息
            let board = await this.prisma.pre_forum_forum.findFirst({
                where: {
                    fid: params.category
                },
                select: {
                    name: true
                }
            })
            resp['tags'].push({
                type: 'category',
                text: board.name,
                id: params.category
            })
        }
        if (params.pageSize > 30) params.pageSize = 30;
        resp.total = await this.prisma.pre_forum_thread.count(countTarget);
        resp.data = await this.prisma.pre_forum_thread.findMany(target);

        // 获取标签和分类信息
        for (let index = 0; index < resp.data.length; index++) {
            let item = resp.data[index];
            item['tags'] = []
            item['users'] = []
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
                select: {
                    tags: true,
                    authorid: true,
                    author: true,
                }
            });
            let users = []
            for (let index = 0; index < posts.length; index++) {
                const post = posts[index];
                if (users.indexOf(post.authorid) < 0) {
                    users.push(post.authorid)
                    item['users'].push({
                        uid: post.authorid,
                        username: post.author
                    })
                }
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

    async thread(params: {
        pageIndex, pageSize, tid
    }) {
        let list = await this.prisma.pre_forum_post.findMany({
            where: {
                tid: params.tid,
            },
            select: {
                author: true,
                authorid: true,
                dateline: true,
                message: true,
                attachment: true,
                subject: true,
            },
            skip: (params.pageIndex - 1) * params.pageSize,
            take: params.pageSize
        });
        let total = await this.prisma.pre_forum_post.count({
            where: {
                tid: params.tid,
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
            data: list,
            total: total
        }
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
                }
                else {
                    return `暂不支持附件${aid}下载~~`
                }
            }
        }
        return `~~附件${aid}已被删除~~`
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
        return this.prisma.pre_common_tag.findMany({
            take: num
        });
    }

    async categorys(num = 15) {
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
            // skip: (pageIndex - 1) * pageSize,
            // take: pageSize
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
            total: total
        }
    }

}
