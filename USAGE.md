<!-- Start SDK Example Usage [usage] -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.emails.send({
    from: "sender@example.com",
    to: "recipient@example.com",
    subject: "Hello World",
    html: "<h1>Hello</h1>",
    text: "Hello",
    templateId: "123e4567-e89b-12d3-a456-426614174000",
    templateData: {
      "name": "John",
      "company": "Acme",
    },
    tags: {
      "campaign": "welcome",
      "source": "signup",
    },
    attachments: [
      {
        filename: "document.pdf",
        content: "JVBERi0xLjQKJe...",
        contentType: "application/pdf",
      },
    ],
    replyTo: {
      inReplyTo: "<message-id@domain.com>",
      threadId: "123e4567-e89b-12d3-a456-426614174000",
      parentEmailId: "123e4567-e89b-12d3-a456-426614174000",
    },
    replyToEmail: "support@example.com",
    previewText: "Check out our latest updates...",
  });

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->