import { ArgumentsHost, Catch, ExceptionFilter } from "@nestjs/common";
import { GoogleRecaptchaException } from "@nestlab/google-recaptcha";
import { Request, Response } from "express";

@Catch(GoogleRecaptchaException)
export class GoogleRecaptchaFilter implements ExceptionFilter {
    catch(exception: GoogleRecaptchaException, host: ArgumentsHost): any {
        const ctx = host.switchToHttp();
        const response = ctx.getResponse<Response>();
        const request = ctx.getRequest<Request>();
        const status = exception.getStatus();

        response.status(200).json({
            code: 3,
            message: '雁阵马错误'
        })
    }
}