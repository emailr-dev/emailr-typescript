# CreateTemplateRequest

## Example Usage

```typescript
import { CreateTemplateRequest } from "emailr/models";

let value: CreateTemplateRequest = {
  name: "Welcome Email",
  subject: "Welcome to {{company}}",
  htmlContent: "<h1>Welcome {{name}}</h1>",
  textContent: "Welcome {{name}}",
  variables: [
    "name",
    "company",
  ],
  fromEmail: "hello@example.com",
  replyTo: "support@example.com",
  previewText: "Check out what's new...",
};
```

## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               | Example                                                   |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `name`                                                    | *string*                                                  | :heavy_check_mark:                                        | N/A                                                       | Welcome Email                                             |
| `subject`                                                 | *string*                                                  | :heavy_check_mark:                                        | N/A                                                       | Welcome to {{company}}                                    |
| `htmlContent`                                             | *string*                                                  | :heavy_minus_sign:                                        | N/A                                                       | <h1>Welcome {{name}}</h1>                                 |
| `textContent`                                             | *string*                                                  | :heavy_minus_sign:                                        | N/A                                                       | Welcome {{name}}                                          |
| `variables`                                               | *string*[]                                                | :heavy_minus_sign:                                        | N/A                                                       | [<br/>"name",<br/>"company"<br/>]                         |
| `fromEmail`                                               | *string*                                                  | :heavy_minus_sign:                                        | Default from email address. Must match a verified domain. | hello@example.com                                         |
| `replyTo`                                                 | *string*                                                  | :heavy_minus_sign:                                        | Reply-To email address for template-based emails.         | support@example.com                                       |
| `previewText`                                             | *string*                                                  | :heavy_minus_sign:                                        | Preview text (preheader) shown in email clients.          | Check out what's new...                                   |