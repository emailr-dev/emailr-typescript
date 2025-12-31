# CreateApiKeyRequest

## Example Usage

```typescript
import { CreateApiKeyRequest } from "emailr/models";

let value: CreateApiKeyRequest = {
  name: "Production API Key",
  permissions: [
    "emails:send",
    "contacts:read",
  ],
};
```

## Fields

| Field                              | Type                               | Required                           | Description                        | Example                            |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `name`                             | *string*                           | :heavy_check_mark:                 | N/A                                | Production API Key                 |
| `permissions`                      | *string*[]                         | :heavy_minus_sign:                 | N/A                                | [<br/>"emails:send",<br/>"contacts:read"<br/>] |