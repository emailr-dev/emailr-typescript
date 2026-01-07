# Domain

## Example Usage

```typescript
import { Domain } from "emailr/models";

let value: Domain = {
  id: "123e4567-e89b-12d3-a456-426614174000",
  organizationId: "f6745985-7676-498c-b3eb-970218476a1d",
  domain: "gummy-taro.name",
  status: "verified",
  verificationToken: "<value>",
  dkimVerified: true,
  spfVerified: true,
  dmarcVerified: true,
  cloudflareZoneId: "<id>",
  sesIdentityArn: "<value>",
  createdAt: new Date("2025-07-02T14:07:21.695Z"),
  verifiedAt: new Date("2024-09-25T05:15:59.868Z"),
  dkimTokens: [
    "<value 1>",
  ],
  dnsRecords: {
    dkim: {
      type: "CNAME",
      name: "<value>",
      value: "<value>",
    },
    spf: {
      type: "TXT",
      name: "<value>",
      value: "<value>",
    },
    dmarc: {
      type: "TXT",
      name: "<value>",
      value: "<value>",
    },
    mailFromMx: {
      type: "MX",
      name: "<value>",
      value: "<value>",
    },
    mailFromSpf: {
      type: "CNAME",
      name: "<value>",
      value: "<value>",
    },
    receivingMx: {
      type: "MX",
      name: "<value>",
      value: "<value>",
    },
  },
  dkimSelector: "<value>",
  mailFromSubdomain: "<value>",
  mailFromVerified: false,
  receivingEnabled: false,
  receivingSubdomain: "<value>",
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | 123e4567-e89b-12d3-a456-426614174000                                                          |
| `organizationId`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `domain`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `status`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           | verified                                                                                      |
| `verificationToken`                                                                           | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `dkimVerified`                                                                                | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `spfVerified`                                                                                 | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `dmarcVerified`                                                                               | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `cloudflareZoneId`                                                                            | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `sesIdentityArn`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `verifiedAt`                                                                                  | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `dkimTokens`                                                                                  | *string*[]                                                                                    | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `dnsRecords`                                                                                  | [models.DomainDnsRecords](../models/domaindnsrecords.md)                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `dkimSelector`                                                                                | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `mailFromSubdomain`                                                                           | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `mailFromVerified`                                                                            | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `receivingEnabled`                                                                            | *boolean*                                                                                     | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `receivingSubdomain`                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |