# Segment

## Example Usage

```typescript
import { Segment } from "emailr/models";

let value: Segment = {
  id: "123e4567-e89b-12d3-a456-426614174000",
  organizationId: "eed83f17-51ce-4c43-bbb7-cbe966267f50",
  name: "<value>",
  description: "zealous management zowie furthermore or who",
  conditions: {
    "key": "<value>",
    "key1": "<value>",
  },
  createdBy: "2b112bfa-876f-432f-85a6-773a24052a71",
  createdAt: new Date("2025-02-28T07:17:23.309Z"),
  updatedAt: new Date("2024-06-30T01:28:30.818Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 123e4567-e89b-12d3-a456-426614174000                                                          |
| `organizationId`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `name`                                                                                        | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `description`                                                                                 | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `conditions`                                                                                  | Record<string, *any*>                                                                         | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdBy`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `updatedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |