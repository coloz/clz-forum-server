import { Controller, Get, Param, Query } from '@nestjs/common';
import { AppService } from './app.service';
import { DiscuzService } from './core/services/discuz.service';

@Controller()
export class AppController {
  constructor(
    private readonly appService: AppService,
    private discuzService: DiscuzService
  ) { }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('thread/all')
  getThreads(@Query() params: {
    pageIndex, pageSize, category, tags
  }): any {
    return this.discuzService.threads({
      pageIndex: Number(params.pageIndex),
      pageSize: Number(params.pageSize),
      category: Number(params.category),
      tags: params.tags
    });
  }

  @Get('thread/:tid')
  getThread(@Param('tid') tid, @Query() params: {
    pageIndex, pageSize
  }): any {
    return this.discuzService.thread({
      tid: Number(tid),
      pageIndex: Number(params.pageIndex),
      pageSize: Number(params.pageSize)
    });
  }

  @Get('user/:uid')
  getUser(@Param('uid') uid, @Query() params: {
    pageIndex, pageSize
  }): any {
    return this.discuzService.user({
      uid: Number(uid)
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


}
