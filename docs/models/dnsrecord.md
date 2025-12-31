# DnsRecord

## Example Usage

```typescript
import { DnsRecord } from "emailr/models";

let value: DnsRecord = {
  type: "TXT",
  name: "<value>",
  value: "<value>",
};
```

## Fields

| Field                            | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `type`                           | [models.Type](../models/type.md) | :heavy_check_mark:               | N/A                              |
| `name`                           | *string*                         | :heavy_check_mark:               | N/A                              |
| `value`                          | *string*                         | :heavy_check_mark:               | N/A                              |
| `priority`                       | *number*                         | :heavy_minus_sign:               | N/A                              |