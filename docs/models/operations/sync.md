# Sync

## Example Usage

```typescript
import { Sync } from "emailr/models/operations";

let value: Sync = {
  id: "1c9ac72b-1e29-431d-bbe5-2fd621d1736b",
  organizationId: "e5051867-92d6-48c5-8be4-03168a1eb4bf",
  sourceType: "webhook",
  sourceProjectId: "<id>",
  sourceTable: "<value>",
  syncEnabled: true,
  createdAt: "1733651928251",
};
```

## Fields

| Field                                                                                          | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `id`                                                                                           | *string*                                                                                       | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `organizationId`                                                                               | *string*                                                                                       | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `sourceType`                                                                                   | [operations.GetV1ContactSyncSourceType](../../models/operations/getv1contactsyncsourcetype.md) | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `sourceProjectId`                                                                              | *string*                                                                                       | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `sourceTable`                                                                                  | *string*                                                                                       | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `fieldMappings`                                                                                | *any*                                                                                          | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `syncEnabled`                                                                                  | *boolean*                                                                                      | :heavy_check_mark:                                                                             | N/A                                                                                            |
| `createdAt`                                                                                    | *string*                                                                                       | :heavy_check_mark:                                                                             | N/A                                                                                            |