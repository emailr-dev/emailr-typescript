# Attachment

## Example Usage

```typescript
import { Attachment } from "emailr/models";

let value: Attachment = {
  filename: "document.pdf",
  content: "JVBERi0xLjQKJe...",
  contentType: "application/pdf",
};
```

## Fields

| Field                       | Type                        | Required                    | Description                 | Example                     |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `filename`                  | *string*                    | :heavy_check_mark:          | N/A                         | document.pdf                |
| `content`                   | *string*                    | :heavy_check_mark:          | Base64 encoded file content | JVBERi0xLjQKJe...           |
| `contentType`               | *string*                    | :heavy_minus_sign:          | N/A                         | application/pdf             |