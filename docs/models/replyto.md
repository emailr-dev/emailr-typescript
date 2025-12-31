# ReplyTo

## Example Usage

```typescript
import { ReplyTo } from "emailr/models";

let value: ReplyTo = {
  inReplyTo: "<message-id@domain.com>",
  threadId: "123e4567-e89b-12d3-a456-426614174000",
  parentEmailId: "123e4567-e89b-12d3-a456-426614174000",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `inReplyTo`                          | *string*                             | :heavy_minus_sign:                   | N/A                                  | <message-id@domain.com>              |
| `threadId`                           | *string*                             | :heavy_minus_sign:                   | N/A                                  | 123e4567-e89b-12d3-a456-426614174000 |
| `parentEmailId`                      | *string*                             | :heavy_minus_sign:                   | N/A                                  | 123e4567-e89b-12d3-a456-426614174000 |