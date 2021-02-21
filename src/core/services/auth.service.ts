import { HttpService, Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import * as CryptoJS from 'crypto-js';
import { RECAPTCHA_SECRET } from '../../../.secret';
@Injectable()
export class AuthService {
    constructor(
        private prisma: PrismaService,
        private http: HttpService
    ) { }

    async login({ username, password, token }) {
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
        this.verify(token)
    }

    verify(token) {
        this.http.post<RecaptchaResponse>('https://recaptcha.net/recaptcha/api/siteverify', {
            secret: RECAPTCHA_SECRET,
            response: token
        }).subscribe(resp => {
            console.log(resp);

        })
    }

}

interface RecaptchaResponse {
    "success": boolean,
    "challenge_ts": any,  // timestamp of the challenge load (ISO format yyyy-MM-dd'T'HH:mm:ssZZ)
    "hostname": string,         // the hostname of the site where the reCAPTCHA was solved
    "error-codes": any
}
