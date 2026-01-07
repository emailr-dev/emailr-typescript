# GetV1ContactSyncResponse

List of contact syncs

## Example Usage

```typescript
import { GetV1ContactSyncResponse } from "emailr/models/operations";

let value: GetV1ContactSyncResponse = {
  syncs: [
    {
      id: "f6fbf874-7312-4bd4-b135-519d1de161f2",
      organizationId: "94b4bf73-ca75-4ff0-99d2-436e1cfab632",
      sourceType: "webhook",
      sourceProjectId: "<id>",
      sourceTable: "<value>",
      syncEnabled: true,
      createdAt: "1704845309298",
    },
  ],
};
```

## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `syncs`                                              | [operations.Sync](../../models/operations/sync.md)[] | :heavy_check_mark:                                   | N/A                                                  |