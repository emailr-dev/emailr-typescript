# PostV1ContactSyncSupabaseResponse

Sync created

## Example Usage

```typescript
import { PostV1ContactSyncSupabaseResponse } from "emailr/models/operations";

let value: PostV1ContactSyncSupabaseResponse = {
  id: "c15e736a-b02f-4a5d-ae85-2f5a43e1c5ed",
  organizationId: "cdc43406-852b-4e3b-8dab-1f59a2f37ae6",
  sourceType: "supabase",
  sourceProjectId: "<id>",
  sourceTable: "<value>",
  syncEnabled: false,
  createdAt: "1705574622503",
};
```

## Fields

| Field                                                                                                            | Type                                                                                                             | Required                                                                                                         | Description                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                             | *string*                                                                                                         | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `organizationId`                                                                                                 | *string*                                                                                                         | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `sourceType`                                                                                                     | [operations.PostV1ContactSyncSupabaseSourceType](../../models/operations/postv1contactsyncsupabasesourcetype.md) | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `sourceProjectId`                                                                                                | *string*                                                                                                         | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `sourceTable`                                                                                                    | *string*                                                                                                         | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `fieldMappings`                                                                                                  | *any*                                                                                                            | :heavy_minus_sign:                                                                                               | N/A                                                                                                              |
| `syncEnabled`                                                                                                    | *boolean*                                                                                                        | :heavy_check_mark:                                                                                               | N/A                                                                                                              |
| `createdAt`                                                                                                      | *string*                                                                                                         | :heavy_check_mark:                                                                                               | N/A                                                                                                              |