import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import * as CryptoJS from 'crypto-js';

@Injectable()
export class AuthService {
    constructor(private prisma: PrismaService) { }

    async login(username, password) {
        let user;
        var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
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
        if (user.password == CryptoJS.MD5(password + user.salt).toString()) {
            return console.log("登录成功");

        }
    }

}
