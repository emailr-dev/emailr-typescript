# WebhookDelivery

## Example Usage

```typescript
import { WebhookDelivery } from "emailr/models";

let value: WebhookDelivery = {
  id: "a80139c1-0830-459e-8eaa-2dfbc23305aa",
  webhookId: "ade6c770-3f3a-4c00-971f-25606684ca31",
  eventType: "<value>",
  payload: {
    "key": "<value>",
    "key1": "<value>",
    "key2": "<value>",
  },
  responseStatus: 9700.55,
  responseBody: "<value>",
  attemptCount: 6438.53,
  deliveredAt: new Date("2025-03-20T19:43:24.366Z"),
  createdAt: new Date("2024-12-08T09:57:34.215Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `webhookId`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `eventType`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `payload`                                                                                     | Record<string, *any*>                                                                         | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `responseStatus`                                                                              | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `responseBody`                                                                                | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `attemptCount`                                                                                | *number*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `deliveredAt`                                                                                 | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |