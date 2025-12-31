# CreateTemplateRequest

## Example Usage

```typescript
import { CreateTemplateRequest } from "emailr/models";

let value: CreateTemplateRequest = {
  name: "Welcome Email",
  subject: "Welcome to {{company}}",
  htmlContent: "<h1>Welcome {{name}}</h1>",
  textContent: "Welcome {{name}}",
  variables: [
    "name",
    "company",
  ],
};
```

## Fields

| Field                     | Type                      | Required                  | Description               | Example                   |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| `name`                    | *string*                  | :heavy_check_mark:        | N/A                       | Welcome Email             |
| `subject`                 | *string*                  | :heavy_check_mark:        | N/A                       | Welcome to {{company}}    |
| `htmlContent`             | *string*                  | :heavy_minus_sign:        | N/A                       | <h1>Welcome {{name}}</h1> |
| `textContent`             | *string*                  | :heavy_minus_sign:        | N/A                       | Welcome {{name}}          |
| `variables`               | *string*[]                | :heavy_minus_sign:        | N/A                       | [<br/>"name",<br/>"company"<br/>] |