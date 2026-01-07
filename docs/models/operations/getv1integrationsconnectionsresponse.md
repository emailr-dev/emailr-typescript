# GetV1IntegrationsConnectionsResponse

List of OAuth connections

## Example Usage

```typescript
import { GetV1IntegrationsConnectionsResponse } from "emailr/models/operations";

let value: GetV1IntegrationsConnectionsResponse = {
  connections: [
    {
      id: "9b00fa3c-6532-4528-b8f1-6a1762e25077",
      provider: "supabase",
      providerUserId: "<id>",
      createdAt: "1719189808360",
    },
  ],
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `connections`                                                    | [operations.Connection](../../models/operations/connection.md)[] | :heavy_check_mark:                                               | N/A                                                              |