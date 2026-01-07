# PostV1ContactSyncSupabaseRequest

## Example Usage

```typescript
import { PostV1ContactSyncSupabaseRequest } from "emailr/models/operations";

let value: PostV1ContactSyncSupabaseRequest = {
  oauthConnectionId: "82b577c9-feda-4ab1-bff2-53db956d1a23",
  projectId: "<id>",
  tableName: "<value>",
  fieldMappings: {
    email: "Lisa.Boyer15@hotmail.com",
  },
};
```

## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `oauthConnectionId`                                                  | *string*                                                             | :heavy_check_mark:                                                   | N/A                                                                  |
| `projectId`                                                          | *string*                                                             | :heavy_check_mark:                                                   | N/A                                                                  |
| `tableName`                                                          | *string*                                                             | :heavy_check_mark:                                                   | N/A                                                                  |
| `fieldMappings`                                                      | [operations.FieldMappings](../../models/operations/fieldmappings.md) | :heavy_check_mark:                                                   | N/A                                                                  |