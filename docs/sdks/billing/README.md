# Billing

## Overview

Subscription billing and usage

### Available Operations

* [postV1BillingCheckout](#postv1billingcheckout)
* [postV1BillingPortal](#postv1billingportal)
* [getV1BillingUsage](#getv1billingusage)
* [postV1BillingWebhooks](#postv1billingwebhooks)

## postV1BillingCheckout

### Example Usage

<!-- UsageSnippet language="typescript" operationID="post_/v1/billing/checkout" method="post" path="/v1/billing/checkout" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.billing.postV1BillingCheckout();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { billingPostV1BillingCheckout } from "emailr/funcs/billingPostV1BillingCheckout.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await billingPostV1BillingCheckout(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("billingPostV1BillingCheckout failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.PostV1BillingCheckoutRequest](../../models/operations/postv1billingcheckoutrequest.md)                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.PostV1BillingCheckoutResponse](../../models/operations/postv1billingcheckoutresponse.md)\>**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| errors.PostV1BillingCheckoutUnauthorizedError | 401                                           | application/json                              |
| errors.EmailrDefaultError                     | 4XX, 5XX                                      | \*/\*                                         |

## postV1BillingPortal

### Example Usage

<!-- UsageSnippet language="typescript" operationID="post_/v1/billing/portal" method="post" path="/v1/billing/portal" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.billing.postV1BillingPortal();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { billingPostV1BillingPortal } from "emailr/funcs/billingPostV1BillingPortal.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await billingPostV1BillingPortal(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("billingPostV1BillingPortal failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.PostV1BillingPortalResponse](../../models/operations/postv1billingportalresponse.md)\>**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| errors.PostV1BillingPortalUnauthorizedError | 401                                         | application/json                            |
| errors.EmailrDefaultError                   | 4XX, 5XX                                    | \*/\*                                       |

## getV1BillingUsage

### Example Usage

<!-- UsageSnippet language="typescript" operationID="get_/v1/billing/usage" method="get" path="/v1/billing/usage" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.billing.getV1BillingUsage();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { billingGetV1BillingUsage } from "emailr/funcs/billingGetV1BillingUsage.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await billingGetV1BillingUsage(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("billingGetV1BillingUsage failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.GetV1BillingUsageResponse](../../models/operations/getv1billingusageresponse.md)\>**

### Errors

| Error Type                                | Status Code                               | Content Type                              |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| errors.GetV1BillingUsageUnauthorizedError | 401                                       | application/json                          |
| errors.EmailrDefaultError                 | 4XX, 5XX                                  | \*/\*                                     |

## postV1BillingWebhooks

### Example Usage

<!-- UsageSnippet language="typescript" operationID="post_/v1/billing/webhooks" method="post" path="/v1/billing/webhooks" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.billing.postV1BillingWebhooks();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { billingPostV1BillingWebhooks } from "emailr/funcs/billingPostV1BillingWebhooks.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await billingPostV1BillingWebhooks(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("billingPostV1BillingWebhooks failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [any](../../models/.md)                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.PostV1BillingWebhooksResponse](../../models/operations/postv1billingwebhooksresponse.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.BadRequestError    | 400                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |