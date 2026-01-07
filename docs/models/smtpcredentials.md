# SmtpCredentials

## Example Usage

```typescript
import { SmtpCredentials } from "emailr/models";

let value: SmtpCredentials = {
  server: "email-smtp.us-east-1.amazonaws.com",
  ports: {
    tls: 587,
    ssl: 465,
    tlsAlternative: 2587,
  },
  username: "AKIAIOSFODNN7EXAMPLE",
  password: "your-api-key",
  encryption: "TLS (port 587) or SSL (port 465)",
  note: "Use your API key as the password. Rotate your API key if compromised.",
};
```

## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           | Example                                                               |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `server`                                                              | *string*                                                              | :heavy_check_mark:                                                    | N/A                                                                   | email-smtp.us-east-1.amazonaws.com                                    |
| `ports`                                                               | [models.Ports](../models/ports.md)                                    | :heavy_check_mark:                                                    | N/A                                                                   |                                                                       |
| `username`                                                            | *string*                                                              | :heavy_check_mark:                                                    | N/A                                                                   | AKIAIOSFODNN7EXAMPLE                                                  |
| `password`                                                            | *string*                                                              | :heavy_check_mark:                                                    | N/A                                                                   | your-api-key                                                          |
| `encryption`                                                          | *string*                                                              | :heavy_check_mark:                                                    | N/A                                                                   | TLS (port 587) or SSL (port 465)                                      |
| `note`                                                                | *string*                                                              | :heavy_check_mark:                                                    | N/A                                                                   | Use your API key as the password. Rotate your API key if compromised. |