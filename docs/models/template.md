# Template

## Example Usage

```typescript
import { Template } from "emailr/models";

let value: Template = {
  id: "123e4567-e89b-12d3-a456-426614174000",
  organizationId: "620de933-5191-4316-972d-0b2cf73d07e9",
  name: "<value>",
  subject: "<value>",
  htmlContent: null,
  textContent: "<value>",
  variables: [
    "<value 1>",
    "<value 2>",
    "<value 3>",
  ],
  createdBy: "477b3ed4-a34f-48ff-bb93-33d0e13df279",
  createdAt: new Date("2025-06-13T12:05:06.926Z"),
  updatedAt: new Date("2024-07-11T02:33:42.768Z"),
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 123e4567-e89b-12d3-a456-426614174000                                                          |
| `organizationId`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `name`                                                                                        | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `subject`                                                                                     | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `htmlContent`                                                                                 | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `textContent`                                                                                 | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `variables`                                                                                   | *string*[]                                                                                    | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdBy`                                                                                   | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `updatedAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |