# DomainDnsRecords

## Example Usage

```typescript
import { DomainDnsRecords } from "emailr/models";

let value: DomainDnsRecords = {
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
};
```

## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `dkim`                                     | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |
| `spf`                                      | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |
| `dmarc`                                    | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |
| `mailFromMx`                               | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |
| `mailFromSpf`                              | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |
| `receivingMx`                              | [models.DnsRecord](../models/dnsrecord.md) | :heavy_check_mark:                         | N/A                                        |