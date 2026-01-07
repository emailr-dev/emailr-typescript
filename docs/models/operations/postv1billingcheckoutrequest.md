# PostV1BillingCheckoutRequest

## Example Usage

```typescript
import { PostV1BillingCheckoutRequest } from "emailr/models/operations";

let value: PostV1BillingCheckoutRequest = {
  priceId: "<id>",
  planType: "marketing",
};
```

## Fields

| Field                                                      | Type                                                       | Required                                                   | Description                                                |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `priceId`                                                  | *string*                                                   | :heavy_check_mark:                                         | Stripe Price ID                                            |
| `planType`                                                 | [operations.PlanType](../../models/operations/plantype.md) | :heavy_check_mark:                                         | N/A                                                        |