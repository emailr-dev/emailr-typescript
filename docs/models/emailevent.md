# EmailEvent

## Example Usage

```typescript
import { EmailEvent } from "emailr/models";

let value: EmailEvent = {
  id: "89e55b9e-5e89-4ca9-8fbd-006397fcdee3",
  emailId: "7cc54302-f5d8-4f76-8c03-55f34cf0dce6",
  eventType: "delivered",
  eventData: null,
  ipAddress: "169.74.226.249",
  userAgent: "<value>",
  createdAt: new Date("2023-06-28T04:05:11.112Z"),
  emails: {
    id: "123e4567-e89b-12d3-a456-426614174000",
    organizationId: "c41ca114-afac-49f7-82d9-c2db7c9bb915",
    messageId: "<id>",
    fromEmail: "Winfield65@hotmail.com",
    toEmail: "Ciara_Conroy@yahoo.com",
    subject: "<value>",
    htmlContent: "<value>",
    textContent: "<value>",
    templateId: "ab936f33-724e-4502-a898-0a41702eb8af",
    status: "sent",
    sesMessageId: null,
    broadcastId: "2c0bd364-16b2-4ab6-9cbe-557894e9e74d",
    metadata: {
      "key": "<value>",
      "key1": "<value>",
    },
    sentAt: new Date("2024-12-06T22:35:01.016Z"),
    deliveredAt: new Date("2023-06-15T01:11:35.594Z"),
    openedAt: new Date("2023-07-27T10:13:46.189Z"),
    clickedAt: new Date("2024-10-08T17:48:19.360Z"),
    bouncedAt: new Date("2025-10-21T16:46:45.500Z"),
    complainedAt: new Date("2025-05-06T15:42:21.934Z"),
    createdAt: new Date("2023-10-15T19:47:41.100Z"),
    threadId: "e1500621-57f4-4d33-8c09-00ac59a11003",
    parentEmailId: null,
    attachments: [],
    clickedLinks: [
      "<value 1>",
      "<value 2>",
    ],
    opens: [],
  },
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `emailId`                                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `eventType`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | delivered                                                                                     |
| `eventData`                                                                                   | Record<string, *any*>                                                                         | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `ipAddress`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `userAgent`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `emails`                                                                                      | [models.Email](../models/email.md)                                                            | :heavy_minus_sign:                                                                            | N/A                                                                                           |                                                                                               |