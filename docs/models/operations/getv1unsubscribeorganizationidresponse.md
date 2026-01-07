# GetV1UnsubscribeOrganizationIdResponse

Unsubscribe page data

## Example Usage

```typescript
import { GetV1UnsubscribeOrganizationIdResponse } from "emailr/models/operations";

let value: GetV1UnsubscribeOrganizationIdResponse = {
  organizationName: "<value>",
  companyName: "Blick Group",
  logoUrl: "https://insistent-permafrost.net",
  primaryColor: "<value>",
  topics: [],
  contactEmail: "<value>",
  currentUnsubscribes: [
    "b84bafaa-b32e-4b77-b347-ce59ae824f5a",
    "411749ec-db1c-4ed8-ac00-0e7c099be147",
  ],
};
```

## Fields

| Field                                                                                                              | Type                                                                                                               | Required                                                                                                           | Description                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| `organizationName`                                                                                                 | *string*                                                                                                           | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `companyName`                                                                                                      | *string*                                                                                                           | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `logoUrl`                                                                                                          | *string*                                                                                                           | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `primaryColor`                                                                                                     | *string*                                                                                                           | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `topics`                                                                                                           | [operations.GetV1UnsubscribeOrganizationIdTopic](../../models/operations/getv1unsubscribeorganizationidtopic.md)[] | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `contactEmail`                                                                                                     | *string*                                                                                                           | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |
| `currentUnsubscribes`                                                                                              | *string*[]                                                                                                         | :heavy_check_mark:                                                                                                 | N/A                                                                                                                |