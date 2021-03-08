import { Strategy } from 'passport-local';
import { PassportStrategy } from '@nestjs/passport';
import { HttpException, Injectable, UnauthorizedException } from '@nestjs/common';
import { AuthService } from './auth.service';

@Injectable()
export class LocalStrategy extends PassportStrategy(Strategy) {
  constructor(private authService: AuthService) {
    super();
  }

  async validate(username: string, password: string): Promise<any> {
    // console.log({ username, password });
    const user = await this.authService.validateUser({ username, password });
    if (!user) {
      throw new HttpException({
        code: 4,
        message: '用户名或密码错误'
      }, 200);
    }
    return user;
  }
}