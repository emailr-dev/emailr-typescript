# CreateSegmentRequest

## Example Usage

```typescript
import { CreateSegmentRequest } from "emailr/models";

let value: CreateSegmentRequest = {
  name: "Active Users",
  description: "Users who opened an email in the last 30 days",
  conditions: {
    "opened_email": {
      "within_days": 30,
    },
  },
};
```

## Fields

| Field                                         | Type                                          | Required                                      | Description                                   | Example                                       |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| `name`                                        | *string*                                      | :heavy_check_mark:                            | N/A                                           | Active Users                                  |
| `description`                                 | *string*                                      | :heavy_minus_sign:                            | N/A                                           | Users who opened an email in the last 30 days |
| `conditions`                                  | Record<string, *any*>                         | :heavy_check_mark:                            | N/A                                           | {<br/>"opened_email": {<br/>"within_days": 30<br/>}<br/>} |