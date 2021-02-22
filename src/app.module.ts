import { HttpModule, Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthService } from './core/services/auth.service';
import { DiscuzService } from './core/services/discuz.service';
import { PrismaService } from './core/services/prisma.service';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';

@Module({
  imports: [HttpModule, AuthModule, UsersModule],
  controllers: [AppController],
  providers: [AppService, PrismaService, DiscuzService, AuthService],
})
export class AppModule { }
