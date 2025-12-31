# ListEmailsResponse

List of emails with pagination

## Example Usage

```typescript
import { ListEmailsResponse } from "emailr/models/operations";

let value: ListEmailsResponse = {
  data: [
    {
      id: "123e4567-e89b-12d3-a456-426614174000",
      organizationId: "ca83d234-d900-4f03-acc7-a0ebae547916",
      messageId: "<id>",
      fromEmail: "Hiram.Zieme@gmail.com",
      toEmail: "Kellen_Kohler64@yahoo.com",
      subject: "<value>",
      htmlContent: "<value>",
      textContent: "<value>",
      templateId: "b0e483e9-b8ff-4ef8-b353-2b5387be3617",
      status: "sent",
      sesMessageId: null,
      broadcastId: null,
      metadata: {},
      sentAt: null,
      deliveredAt: new Date("2024-12-23T11:10:19.843Z"),
      openedAt: new Date("2024-05-30T15:33:54.240Z"),
      clickedAt: new Date("2024-12-15T02:37:26.191Z"),
      bouncedAt: new Date("2024-04-13T21:12:33.082Z"),
      complainedAt: new Date("2024-07-16T09:08:11.304Z"),
      createdAt: new Date("2023-01-02T00:47:18.895Z"),
      threadId: "44324429-ff83-49fa-a195-590c322e0990",
      parentEmailId: null,
      attachments: [],
      clickedLinks: [
        "<value 1>",
        "<value 2>",
        "<value 3>",
      ],
      opens: [
        "<value 1>",
        "<value 2>",
        "<value 3>",
      ],
    },
  ],
  pagination: {
    page: 730501,
    limit: 632811,
    total: 887016,
    pages: 89297,
  },
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `data`                                                         | [models.Email](../../models/email.md)[]                        | :heavy_check_mark:                                             | N/A                                                            |
| `pagination`                                                   | [operations.Pagination](../../models/operations/pagination.md) | :heavy_check_mark:                                             | N/A                                                            |