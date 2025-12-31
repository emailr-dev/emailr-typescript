# BulkCreateContactsRequest

## Example Usage

```typescript
import { BulkCreateContactsRequest } from "emailr/models";

let value: BulkCreateContactsRequest = {
  contacts: [
    {
      email: "contact@example.com",
      firstName: "John",
      lastName: "Doe",
      metadata: {
        "source": "website",
        "plan": "pro",
      },
    },
  ],
};
```

## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `contacts`                                                         | [models.CreateContactRequest](../models/createcontactrequest.md)[] | :heavy_check_mark:                                                 | N/A                                                                |