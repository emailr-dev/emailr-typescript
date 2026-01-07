# Connection

## Example Usage

```typescript
import { Connection } from "emailr/models/operations";

let value: Connection = {
  id: "654c9c3a-526d-4e3e-b9bf-4c9c84516453",
  provider: "vercel",
  providerUserId: "<id>",
  createdAt: "1733187212784",
};
```

## Fields

| Field                                                      | Type                                                       | Required                                                   | Description                                                |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `id`                                                       | *string*                                                   | :heavy_check_mark:                                         | N/A                                                        |
| `provider`                                                 | [operations.Provider](../../models/operations/provider.md) | :heavy_check_mark:                                         | N/A                                                        |
| `providerUserId`                                           | *string*                                                   | :heavy_check_mark:                                         | N/A                                                        |
| `providerMetadata`                                         | *any*                                                      | :heavy_minus_sign:                                         | N/A                                                        |
| `createdAt`                                                | *string*                                                   | :heavy_check_mark:                                         | N/A                                                        |