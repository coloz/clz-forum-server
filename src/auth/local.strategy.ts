import { Strategy } from 'passport-local';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { AuthService } from './auth.service';

@Injectable()
export class LocalStrategy extends PassportStrategy(Strategy) {
  constructor(private authService: AuthService) {
    super();
  }

  async validate(username: string, password: string, token: string): Promise<any> {
    console.log('R: ',username,password,token);
    const user = await this.authService.validateUser({ username, password, token });
    console.log(user);
    
    if (!user) {
      throw new UnauthorizedException();
    }
    return user;
  }
}