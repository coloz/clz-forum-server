import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/core/services/prisma.service';

@Injectable()
export class DiscuzService {
    constructor(private prisma: PrismaService) { }

    async threads(params: {
        pageIndex, pageSize, category, tags
    }) {
        let target: any = {
            orderBy: {
                tid: 'desc',
            },
            skip: (params.pageIndex - 1) * params.pageSize,
            take: params.pageSize
        }
        let countTarget = {}
        if (typeof params.tags != 'undefined') {
            console.log(params.tags);
        }
        if (typeof params.category != 'undefined' && !isNaN(params.category)) {
            // console.log(params.category);
            target['where'] = {
                fid: params.category
            }
            countTarget['where'] = {
                fid: params.category
            }
        }
        if (params.pageSize > 30) params.pageSize = 30;
        let list = await this.prisma.pre_forum_thread.findMany(target);
        let total = await this.prisma.pre_forum_thread.count(countTarget);

        // 获取标签和分类信息
        for (let index = 0; index < list.length; index++) {
            const item = list[index];
            item['tags'] = []
            item['users'] = []
            // 添加分类
            let board = await this.prisma.pre_forum_forum.findFirst({
                where: {
                    fid: item.fid
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
                // select:{
                //     tags:
                // }
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
            if (typeof posts[0] != 'undefined')
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

        return {
            data: list,
            total: total
        }
    }

    async thread(params: {
        pageIndex, pageSize, tid
    }) {
        let list = await this.prisma.pre_forum_post.findMany({
            where: {
                tid: params.tid,
            },
            skip: (params.pageIndex - 1) * params.pageSize,
            take: params.pageSize
        });
        let total = await this.prisma.pre_forum_post.count({
            where: {
                tid: params.tid,
            },
        })
        return {
            data: list,
            total: total
        }
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

            },
            take: num
        });
    }

}
