# SendEmailRequest

## Example Usage

```typescript
import { SendEmailRequest } from "emailr/models";

let value: SendEmailRequest = {
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
};
```

## Fields

| Field                                                                                                           | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     | Example                                                                                                         |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `from`                                                                                                          | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | Sender email. Required if not using a template with from_email set.                                             | sender@example.com                                                                                              |
| `to`                                                                                                            | *models.To*                                                                                                     | :heavy_check_mark:                                                                                              | N/A                                                                                                             |                                                                                                                 |
| `subject`                                                                                                       | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | Email subject. Required if not using a template.                                                                | Hello World                                                                                                     |
| `html`                                                                                                          | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | N/A                                                                                                             | <h1>Hello</h1>                                                                                                  |
| `text`                                                                                                          | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | N/A                                                                                                             | Hello                                                                                                           |
| `templateId`                                                                                                    | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | Template ID. When provided, template values are used for subject, html, text, from, reply_to, and preview_text. | 123e4567-e89b-12d3-a456-426614174000                                                                            |
| `templateData`                                                                                                  | Record<string, *any*>                                                                                           | :heavy_minus_sign:                                                                                              | Variables to render in the template. Must include all variables defined in the template.                        | {<br/>"name": "John",<br/>"company": "Acme"<br/>}                                                               |
| `tags`                                                                                                          | Record<string, *string*>                                                                                        | :heavy_minus_sign:                                                                                              | N/A                                                                                                             | {<br/>"campaign": "welcome",<br/>"source": "signup"<br/>}                                                       |
| `attachments`                                                                                                   | [models.Attachment](../models/attachment.md)[]                                                                  | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |                                                                                                                 |
| `replyTo`                                                                                                       | [models.ReplyTo](../models/replyto.md)                                                                          | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |                                                                                                                 |
| `replyToEmail`                                                                                                  | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | Reply-To email address. Overrides template reply_to if provided.                                                | support@example.com                                                                                             |
| `previewText`                                                                                                   | *string*                                                                                                        | :heavy_minus_sign:                                                                                              | Preview text (preheader). Overrides template preview_text if provided.                                          | Check out our latest updates...                                                                                 |