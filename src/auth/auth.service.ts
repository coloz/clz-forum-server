
import { HttpService, Injectable } from '@nestjs/common';
import { UsersService } from 'src/users/users.service';
import { JwtService } from '@nestjs/jwt';
import * as CryptoJS from 'crypto-js';

@Injectable()
export class AuthService {

  constructor(
    private usersService: UsersService,
    private jwtService: JwtService,
    private http: HttpService
  ) { }

  async validateUser({ username, password }): Promise<any> {
    const user = await this.usersService.findUserByUsername(username);
    if (user == null) return null
    if (user.password == CryptoJS.MD5(password + user.salt).toString()) {
      return {
        uid: user.uid,
        username: user.username,
      }
    }
    return null;
  }

  async login(user: any) {
    const payload = { username: user.username, uid: user.uid };
    return {
      code: 0,
      detail: {
        username: user.username,
        uid: user.uid
      },
      access_token: this.jwtService.sign(payload)
    }
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

