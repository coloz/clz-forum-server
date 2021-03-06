import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/core/services/prisma.service';

@Injectable()
export class UsersService {
    constructor(
        private prisma: PrismaService,
    ) {

    }

    async findUserByUsername(username: string) {
        var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
        let user;
        if (reg.test(username)) {
            user = await this.prisma.pre_ucenter_members.findFirst({
                where: {
                    email: username
                }
            })
        } else {
            user = await this.prisma.pre_ucenter_members.findFirst({
                where: {
                    username: username
                }
            })
        }
        return user
    }

    async findUserByUid(uid: number) {
        let user;
        user = await this.prisma.pre_ucenter_members.findUnique({
            where: {
                uid: uid
            },
            select: {
                uid: true,
                username: true,
            }
        })
        return user
    }
}
