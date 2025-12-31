# ApiKey

## Example Usage

```typescript
import { ApiKey } from "emailr/models";

let value: ApiKey = {
  id: "123e4567-e89b-12d3-a456-426614174000",
  organizationId: "92236f17-372e-4daf-b6cc-96a6e6d087f6",
  name: "<value>",
  key: "re_abc123...",
  permissions: [
    "<value 1>",
    "<value 2>",
    "<value 3>",
  ],
  lastUsedAt: new Date("2024-04-30T06:27:49.410Z"),
  createdBy: "3b461dc8-77b6-4eac-8475-b169948d7c50",
  createdAt: new Date("2024-11-13T00:09:23.394Z"),
  revokedAt: new Date("2023-08-08T01:09:47.950Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 123e4567-e89b-12d3-a456-426614174000                                                          |
| `organizationId`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `name`                                                                                        | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `key`                                                                                         | *string*                                                                                      | :heavy_minus_sign:                                                                            | Only returned when creating a new key                                                         | re_abc123...                                                                                  |
| `permissions`                                                                                 | *string*[]                                                                                    | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `lastUsedAt`                                                                                  | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdBy`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `revokedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |