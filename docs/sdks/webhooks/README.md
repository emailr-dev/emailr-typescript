# Webhooks

## Overview

Webhook configuration

### Available Operations

* [create](#create) - Create webhook
* [list](#list) - List webhooks
* [toggle](#toggle) - Toggle webhook
* [delete](#delete) - Delete webhook
* [getDeliveries](#getdeliveries) - Get webhook deliveries

## create

Create a new webhook endpoint for event notifications

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createWebhook" method="post" path="/v1/webhooks" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.webhooks.create({
    name: "Email Events Webhook",
    url: "https://api.example.com/webhooks",
    events: [
      "email.sent",
      "email.delivered",
      "email.bounced",
    ],
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { webhooksCreate } from "emailr/funcs/webhooksCreate.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await webhooksCreate(emailr, {
    name: "Email Events Webhook",
    url: "https://api.example.com/webhooks",
    events: [
      "email.sent",
      "email.delivered",
      "email.bounced",
    ],
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("webhooksCreate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.CreateWebhookRequest](../../models/createwebhookrequest.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.Webhook](../../models/webhook.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## list

Get all webhooks for your organization

### Example Usage

<!-- UsageSnippet language="typescript" operationID="listWebhooks" method="get" path="/v1/webhooks" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.webhooks.list();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { webhooksList } from "emailr/funcs/webhooksList.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await webhooksList(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("webhooksList failed:", res.error);
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

**Promise\<[models.Webhook[]](../../models/.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## toggle

Enable or disable a webhook

### Example Usage

<!-- UsageSnippet language="typescript" operationID="toggleWebhook" method="put" path="/v1/webhooks/{id}/toggle" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.webhooks.toggle({
    id: "123e4567-e89b-12d3-a456-426614174000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { webhooksToggle } from "emailr/funcs/webhooksToggle.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await webhooksToggle(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("webhooksToggle failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ToggleWebhookRequest](../../models/operations/togglewebhookrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.WebhookToggleResponse](../../models/webhooktoggleresponse.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 404                       | application/json          |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## delete

Delete a webhook and its delivery history

### Example Usage

<!-- UsageSnippet language="typescript" operationID="deleteWebhook" method="delete" path="/v1/webhooks/{id}" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.webhooks.delete({
    id: "123e4567-e89b-12d3-a456-426614174000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { webhooksDelete } from "emailr/funcs/webhooksDelete.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await webhooksDelete(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("webhooksDelete failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.DeleteWebhookRequest](../../models/operations/deletewebhookrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.Success](../../models/success.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## getDeliveries

Get recent delivery attempts for a webhook

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getWebhookDeliveries" method="get" path="/v1/webhooks/{id}/deliveries" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.webhooks.getDeliveries({
    id: "123e4567-e89b-12d3-a456-426614174000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { webhooksGetDeliveries } from "emailr/funcs/webhooksGetDeliveries.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await webhooksGetDeliveries(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("webhooksGetDeliveries failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetWebhookDeliveriesRequest](../../models/operations/getwebhookdeliveriesrequest.md)                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.WebhookDelivery[]](../../models/.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 404                       | application/json          |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |