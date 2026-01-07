# PostV1UnsubscribeRequest

## Example Usage

```typescript
import { PostV1UnsubscribeRequest } from "emailr/models/operations";

let value: PostV1UnsubscribeRequest = {
  email: "Torey.Nikolaus-Weimann68@gmail.com",
  organizationId: "44bee8d0-caf5-4b83-b8d8-14fa25275783",
};
```

## Fields

| Field              | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `email`            | *string*           | :heavy_check_mark: | N/A                |
| `organizationId`   | *string*           | :heavy_check_mark: | N/A                |
| `topicIds`         | *string*[]         | :heavy_minus_sign: | N/A                |
| `unsubscribeAll`   | *boolean*          | :heavy_minus_sign: | N/A                |
| `reason`           | *string*           | :heavy_minus_sign: | N/A                |