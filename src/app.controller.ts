import { Body, Controller, Get, Param, ParseIntPipe, Post, Query, Request, UseFilters, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { GoogleRecaptchaGuard, Recaptcha } from '@nestlab/google-recaptcha';
import { AppService } from './app.service';
import { AuthService } from './auth/auth.service';
import { JwtAuthGuard } from './auth/jwt-auth.guard';
import { DiscuzService } from './core/services/discuz.service';
import { GoogleRecaptchaFilter } from './filter';

@Controller()
export class AppController {
  constructor(
    private readonly appService: AppService,
    private discuzService: DiscuzService,
    private authService: AuthService
  ) { }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Post('thread/all')
  getThreadList(
    @Body('pageIndex') pageIndex,
    @Body('pageSize') pageSize,
    @Body('category') category,
    @Body('tags') tags,
    @Body('order') order
  ): any {
    return this.discuzService.threads({ pageIndex, pageSize, category, tags, order });
  }

  @Get('thread/:tid/info')
  getThreadInfo(@Param('tid', ParseIntPipe) tid: number): any {
    return this.discuzService.threadInfo(tid);
  }

  @Get('thread/:tid/posts')
  getThread(
    @Param('tid', ParseIntPipe) tid: number,
    @Query('index', ParseIntPipe) index,
    @Query('count', ParseIntPipe) count,
  ): any {
    return this.discuzService.threadPosts({
      tid: tid,
      index: index,
      count: count
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

  // 登录
  @Post('auth/login')
  @UseGuards(GoogleRecaptchaGuard, AuthGuard('local'))
  @UseFilters(GoogleRecaptchaFilter)
  login(@Request() req) {
    return this.authService.login(req.user);
  }

  // 注册
  @Recaptcha()
  @Post('auth/register')
  register(@Body('username') username, @Body('password') password, @Body('token') token,): any {
    // return this.authService.register()
  }

  // 登出
  @Post('auth/logout')
  logout(@Body('username') username, @Body('password') password, @Body('token') token,): any {
    // return this.authService.logout()
  }

  @UseGuards(JwtAuthGuard)
  @Get('profile')
  getProfile(@Request() req) {
    return {
      code: 0,
      detail: req.user
    }
  }

  // 获取收藏点赞状态
  @Get('thread/:tid/like')
  getFavoriteAndLikeState(@Request() req, @Param('tid', ParseIntPipe) tid: number) {
    return this.discuzService.getFavoriteAndLikeState(req.user.uid, tid)
  }
  //收藏
  @UseGuards(JwtAuthGuard)
  @Post('thread/:tid/favorite')
  addFavorite(@Request() req, @Param('tid', ParseIntPipe) tid: number) { 
    return this.discuzService.addFavorite(req.user.uid, tid)
  }
  //点赞
  @UseGuards(JwtAuthGuard)
  @Post('thread/:tid/like')
  addLike(@Request() req, @Param('tid', ParseIntPipe) tid: number) {
    return this.discuzService.addLike(req.user.uid, tid)
  }

  @UseGuards(JwtAuthGuard)
  @Post('thread')
  newThread(
    @Body('uid') uid,
    @Body('fid') fid,
    @Body('subject') subject,
    @Body('content') content,
  ): any {
    return this.discuzService.newThread({ uid, fid, subject, content });
  }

  @UseGuards(JwtAuthGuard)
  @Post('thread/:tid')
  async newPost(
    @Param('tid', ParseIntPipe) tid: number,
    @Body('content') content,
    @Request() req
  ): Promise<any> {
    console.log(req.user);
    let post = await this.discuzService.newPost({
      user: req.user,
      thread: { tid: tid },
      content: content
    });
    return {
      code: 0,
      detail: { post: post }
    }
  }

}
