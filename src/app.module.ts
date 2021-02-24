import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DiscuzService } from './core/services/discuz.service';
import { PrismaService } from './core/services/prisma.service';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { ConfigModule } from '@nestjs/config';
import { GoogleRecaptchaModule, GoogleRecaptchaNetwork } from '@nestlab/google-recaptcha';

@Module({
  imports: [
    AuthModule,
    UsersModule,
    ConfigModule.forRoot(),
    GoogleRecaptchaModule.forRoot({
      secretKey: process.env.RECAPTCHA_SECRET,
      response: req => req.body.token,
      network: GoogleRecaptchaNetwork.Recaptcha,
      agent: null
    })
  ],
  controllers: [AppController],
  providers: [AppService, PrismaService, DiscuzService],
})
export class AppModule { }
