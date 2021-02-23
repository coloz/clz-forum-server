
import { HttpService, Injectable } from '@nestjs/common';
import { UsersService } from 'src/users/users.service';
import * as CryptoJS from 'crypto-js';

@Injectable()
export class AuthService {

  constructor(
    private usersService: UsersService,
    private http: HttpService
  ) { }

  async validateUser({ username, password, token }): Promise<any> {
    // if (!await this.verify(token)) return 'Recaptcha验证失败'
    const user = await this.usersService.findOne(username);
    if (user == null) return '该用户没有注册'
    if (user.password == CryptoJS.MD5(password + user.salt).toString()) {
      return user
    }
    return {
      message: '登录失败'
    }
    return null;
  }

  async register() {

  }

  async logout() {

  }

  verify(token): Promise<boolean> {
    return new Promise((resolve, reject) => {
      this.http.post<RecaptchaResponse>('https://recaptcha.net/recaptcha/api/siteverify', {
        body: {
          secret: process.env.RECAPTCHA_SECRET,
          response: token
        }
      }).toPromise().then(resp => {
        reject(resp.data.success)
      })
    })
  }
}


interface RecaptchaResponse {
  "success": boolean,
  "challenge_ts": any,  // timestamp of the challenge load (ISO format yyyy-MM-dd'T'HH:mm:ssZZ)
  "hostname": string,         // the hostname of the site where the reCAPTCHA was solved
  "error-codes": any
}

