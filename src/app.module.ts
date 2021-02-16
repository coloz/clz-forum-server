import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DiscuzService } from './core/services/discuz.service';
import { PrismaService } from './core/services/prisma.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService, PrismaService, DiscuzService],
})
export class AppModule {}
