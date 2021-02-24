import { Body, Controller, Get, Param, ParseIntPipe, Post, Query, Request, UseFilters, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { GoogleRecaptchaGuard, Recaptcha } from '@nestlab/google-recaptcha';
import { AppService } from './app.service';
import { JwtAuthGuard } from './auth/jwt-auth.guard';
import { DiscuzService } from './core/services/discuz.service';
import { GoogleRecaptchaFilter } from './filter';

@Controller()
export class AppController {
  constructor(
    private readonly appService: AppService,
    private discuzService: DiscuzService,
  ) { }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('thread/all')
  getThreads(
    @Query('pageIndex', ParseIntPipe) pageIndex,
    @Query('pageSize', ParseIntPipe) pageSize,
    @Query('category') category,
    @Query('tags') tags,
    @Query('order') order
  ): any {
    return this.discuzService.threads({ pageIndex, pageSize, category, tags, order });
  }

  @Get('thread/:tid')
  getThread(@Param('tid', ParseIntPipe) tid: number, @Query() params: {
    pageIndex, pageSize
  }): any {
    return this.discuzService.thread({
      tid: tid,
      pageIndex: Number(params.pageIndex),
      pageSize: Number(params.pageSize)
    });
  }

  @Get('user/:uid')
  getUser(@Param('uid', ParseIntPipe) uid: number, @Query() params: {
    pageIndex, pageSize
  }): any {
    return this.discuzService.user({
      uid: uid
    });
  }

  @Get('tags')
  getTags(@Query() params): any {
    return this.discuzService.tags(parseInt(params.num))
  }

  @Get('categorys')
  getCategorys(@Query() params): any {
    return this.discuzService.categorys(parseInt(params.num))
  }

  @Get('search')
  async getFilteredPosts(
    @Query('keyword') keyword: string,
    @Query('pageIndex', ParseIntPipe) pageIndex: number,
    @Query('pageSize', ParseIntPipe) pageSize: number
  ) {
    return this.discuzService.search({ keyword, pageIndex, pageSize });
  }

  // 登录、注册、登出
  // @Recaptcha()
  @UseGuards(GoogleRecaptchaGuard, AuthGuard('local'))
  @Post('auth/login')
  @UseFilters(GoogleRecaptchaFilter)
  login(@Request() req) {
    return req.user;
  }

  // login(@Body('username') username, @Body('password') password, @Body('token') token,): any {
  //   return this.authService.login({ username, password, token })
  // }
  @Recaptcha()
  @Post('auth/register')
  register(@Body('username') username, @Body('password') password, @Body('token') token,): any {
    // return this.authService.register()
  }

  @Post('auth/logout')
  logout(@Body('username') username, @Body('password') password, @Body('token') token,): any {
    // return this.authService.logout()
  }

  @UseGuards(JwtAuthGuard)
  @Get('profile')
  getProfile(@Request() req) {
    return req.user;
  }

}
