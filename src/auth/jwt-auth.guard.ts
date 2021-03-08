import { ExecutionContext, HttpException, Injectable, UnauthorizedException } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

@Injectable()
export class JwtAuthGuard extends AuthGuard('jwt') {

    canActivate(context: ExecutionContext) {
        // Add your custom authentication logic here
        // for example, call super.logIn(request) to establish a session.
        // console.log(context);
        return super.canActivate(context);
    }

    handleRequest(err, user, info: Error) {
        // You can throw an exception based on either "info" or "err" arguments
        if (err || !user) {
            // console.log(info);
            if (info.message == 'No auth token') {
                throw new HttpException({
                    code: -2
                }, 200)
            }
            throw new HttpException({
                code: -1,
                message: '登录已过期，请重新登录'
            }, 200)
        }
        return user;
    }
}
