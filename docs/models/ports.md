# Ports

## Example Usage

```typescript
import { Ports } from "emailr/models";

let value: Ports = {
  tls: 587,
  ssl: 465,
  tlsAlternative: 2587,
};
```

## Fields

| Field              | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `tls`              | *number*           | :heavy_check_mark: | N/A                | 587                |
| `ssl`              | *number*           | :heavy_check_mark: | N/A                | 465                |
| `tlsAlternative`   | *number*           | :heavy_check_mark: | N/A                | 2587               |