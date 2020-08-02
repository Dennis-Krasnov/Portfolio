import * as functions from 'firebase-functions';
import * as sendGridMail from '@sendgrid/mail';

// Configure API key
sendGridMail.setApiKey(functions.config().sendgrid.api_key);

export const sendEmail = functions.https.onRequest(async (request, response) => {
    functions.logger.info(request.body, {structuredData: true});

    const name = request.body.name;
    const email = request.body.email;
    const message = request.body.message;

    if (!name || !email || !message) {
        response.status(400).send();
        return;
    }

    const res = await sendGridMail.send({
        to: 'dennis.krasnov@gmail.com',
        from: 'dennis@krasnov.dev',
        subject: `${name} sent you a message from portfolio contact form`,
        text: `${message}. From: ${name} - ${email}`,
        html: `NAME: ${name}<br/><br/>EMAIL: ${email}<br /><br />MESSAGE: ${message}`,
    });

    functions.logger.info(res, {structuredData: true});

    response.status(200).send();
});

// curl -d '{"name":"Dennis Krasnov", "email":"denny@gmail.com", "message": "HELLO THERE!"}' -H "Content-Type: application/json" -X POST https://us-central1-krasnov-dev.cloudfunctions.net/sendEmail
// curl -d '{"name":"Dennis Krasnov", "email":"denny@gmail.com", "message": "HELLO THERE!"}' -H "Content-Type: application/json" -X POST https://krasnov.dev/send-email