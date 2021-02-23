import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DiscuzService } from './core/services/discuz.service';
import { PrismaService } from './core/services/prisma.service';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    AuthModule,
    UsersModule,
    ConfigModule.forRoot()
  ],
  controllers: [AppController],
  providers: [AppService, PrismaService, DiscuzService],
})
export class AppModule { }
