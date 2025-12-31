# CreateContactRequest

## Example Usage

```typescript
import { CreateContactRequest } from "emailr/models";

let value: CreateContactRequest = {
  email: "contact@example.com",
  firstName: "John",
  lastName: "Doe",
  metadata: {
    "source": "website",
    "plan": "pro",
  },
};
```

## Fields

| Field                                  | Type                                   | Required                               | Description                            | Example                                |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `email`                                | *string*                               | :heavy_check_mark:                     | N/A                                    | contact@example.com                    |
| `firstName`                            | *string*                               | :heavy_minus_sign:                     | N/A                                    | John                                   |
| `lastName`                             | *string*                               | :heavy_minus_sign:                     | N/A                                    | Doe                                    |
| `subscribed`                           | *boolean*                              | :heavy_minus_sign:                     | N/A                                    | true                                   |
| `metadata`                             | Record<string, *any*>                  | :heavy_minus_sign:                     | N/A                                    | {<br/>"source": "website",<br/>"plan": "pro"<br/>} |