# GetV1BillingUsageResponse

Current usage

## Example Usage

```typescript
import { GetV1BillingUsageResponse } from "emailr/models/operations";

let value: GetV1BillingUsageResponse = {
  organizationId: "c700ae28-11a8-499d-a263-0a5f78b57eec",
  month: "<value>",
  transactionalEmails: 576.85,
  marketingEmails: 4474.2,
  transactionalLimit: 6677.44,
  marketingLimit: 8578.78,
  transactionalPercentUsed: 4703.25,
  marketingPercentUsed: 1575.1,
};
```

## Fields

| Field                      | Type                       | Required                   | Description                |
| -------------------------- | -------------------------- | -------------------------- | -------------------------- |
| `organizationId`           | *string*                   | :heavy_check_mark:         | N/A                        |
| `month`                    | *string*                   | :heavy_check_mark:         | N/A                        |
| `transactionalEmails`      | *number*                   | :heavy_check_mark:         | N/A                        |
| `marketingEmails`          | *number*                   | :heavy_check_mark:         | N/A                        |
| `transactionalLimit`       | *number*                   | :heavy_check_mark:         | N/A                        |
| `marketingLimit`           | *number*                   | :heavy_check_mark:         | N/A                        |
| `transactionalPercentUsed` | *number*                   | :heavy_check_mark:         | N/A                        |
| `marketingPercentUsed`     | *number*                   | :heavy_check_mark:         | N/A                        |