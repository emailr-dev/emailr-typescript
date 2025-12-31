# CreateWebhookRequest

## Example Usage

```typescript
import { CreateWebhookRequest } from "emailr/models";

let value: CreateWebhookRequest = {
  name: "Email Events Webhook",
  url: "https://api.example.com/webhooks",
  events: [
    "email.sent",
    "email.delivered",
    "email.bounced",
  ],
};
```

## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          | Example                                              |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `name`                                               | *string*                                             | :heavy_check_mark:                                   | N/A                                                  | Email Events Webhook                                 |
| `url`                                                | *string*                                             | :heavy_check_mark:                                   | N/A                                                  | https://api.example.com/webhooks                     |
| `events`                                             | *string*[]                                           | :heavy_check_mark:                                   | N/A                                                  | [<br/>"email.sent",<br/>"email.delivered",<br/>"email.bounced"<br/>] |