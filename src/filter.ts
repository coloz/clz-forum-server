import { ArgumentsHost, Catch, ExceptionFilter } from "@nestjs/common";
import { GoogleRecaptchaException } from "@nestlab/google-recaptcha";

@Catch(GoogleRecaptchaException)
export class GoogleRecaptchaFilter implements ExceptionFilter {
    catch(exception: GoogleRecaptchaException, host: ArgumentsHost): any {
    //    console.log(exception);
    //    console.log(host);
       
    }
}