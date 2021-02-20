import { Body, Controller, Get, Param, ParseIntPipe, Post, Query } from '@nestjs/common';
import { AppService } from './app.service';
import { AuthService } from './core/services/auth.service';
import { DiscuzService } from './core/services/discuz.service';

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

  @Get('thread/all')
  getThreads(@Query() params: {
    pageIndex, pageSize, category, tags, order
  }): any {
    return this.discuzService.threads({
      pageIndex: Number(params.pageIndex),
      pageSize: Number(params.pageSize),
      category: Number(params.category),
      tags: params.tags,
      order: params.order
    });
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


  @Post('login')
  login(@Body() params): any {
    return this.authService.login(params.username, params.password)
  }

  @Get('search')
  async getFilteredPosts(
    @Query('keyword') keyword: string,
    @Query('pageIndex', ParseIntPipe) pageIndex: number,
    @Query('pageSize', ParseIntPipe) pageSize: number
  ) {
    return this.discuzService.search({ keyword, pageIndex, pageSize });
  }
}
