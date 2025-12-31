# UpdateUnsubscribeSettingsRequest

## Example Usage

```typescript
import { UpdateUnsubscribeSettingsRequest } from "emailr/models";

let value: UpdateUnsubscribeSettingsRequest = {
  customMessage: "You have been unsubscribed from our mailing list.",
  redirectUrl: "https://example.com/unsubscribed",
  oneClickEnabled: true,
};
```

## Fields

| Field                                             | Type                                              | Required                                          | Description                                       | Example                                           |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `customMessage`                                   | *string*                                          | :heavy_minus_sign:                                | N/A                                               | You have been unsubscribed from our mailing list. |
| `redirectUrl`                                     | *string*                                          | :heavy_minus_sign:                                | N/A                                               | https://example.com/unsubscribed                  |
| `oneClickEnabled`                                 | *boolean*                                         | :heavy_minus_sign:                                | N/A                                               | true                                              |