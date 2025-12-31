# EmailMetrics

## Example Usage

```typescript
import { EmailMetrics } from "emailr/models";

let value: EmailMetrics = {
  total: 1000,
  sent: 950,
  delivered: 920,
  bounced: 25,
  complained: 5,
};
```

## Fields

| Field              | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `total`            | *number*           | :heavy_check_mark: | N/A                | 1000               |
| `sent`             | *number*           | :heavy_check_mark: | N/A                | 950                |
| `delivered`        | *number*           | :heavy_check_mark: | N/A                | 920                |
| `bounced`          | *number*           | :heavy_check_mark: | N/A                | 25                 |
| `complained`       | *number*           | :heavy_check_mark: | N/A                | 5                  |