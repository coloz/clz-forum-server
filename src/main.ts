import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
// import expressSession from 'express-session';
// import { PrismaSessionStore } from '@quixo3/prisma-session-store';
// import { PrismaClient } from '@prisma/client';
// const prisma = new PrismaClient()

declare const module: any;

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3000);

  // app.use(
  //   expressSession({
  //     cookie: {
  //       maxAge: 7 * 24 * 60 * 60 * 1000 // ms
  //      },
  //      secret: 'a santa at nasa',
  //      store: new PrismaSessionStore(
  //       prisma,
  //        {
  //          checkPeriod: 2 * 60 * 1000,  //ms
  //          dbRecordIdIsSessionId: true,
  //          dbRecordIdFunction: undefined,
  //        }
  //      )
  //   }),
  // );

  if (module.hot) {
    module.hot.accept();
    module.hot.dispose(() => app.close());
  }
}
bootstrap();