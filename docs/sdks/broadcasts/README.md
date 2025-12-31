# Broadcasts

## Overview

Broadcast campaign management

### Available Operations

* [create](#create) - Create broadcast
* [list](#list) - List broadcasts
* [send](#send) - Send broadcast
* [get](#get) - Get broadcast

## create

Create a new email broadcast campaign

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createBroadcast" method="post" path="/v1/broadcasts" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.broadcasts.create({
    name: "Newsletter - January 2024",
    subject: "Your monthly update",
    fromEmail: "newsletter@example.com",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { broadcastsCreate } from "emailr/funcs/broadcastsCreate.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await broadcastsCreate(emailr, {
    name: "Newsletter - January 2024",
    subject: "Your monthly update",
    fromEmail: "newsletter@example.com",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("broadcastsCreate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.CreateBroadcastRequest](../../models/createbroadcastrequest.md)                                                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.Broadcast](../../models/broadcast.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## list

Get all broadcasts for your organization

### Example Usage

<!-- UsageSnippet language="typescript" operationID="listBroadcasts" method="get" path="/v1/broadcasts" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.broadcasts.list();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { broadcastsList } from "emailr/funcs/broadcastsList.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await broadcastsList(emailr);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("broadcastsList failed:", res.error);
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

**Promise\<[models.Broadcast[]](../../models/.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 500                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## send

Send a broadcast to all recipients

### Example Usage

<!-- UsageSnippet language="typescript" operationID="sendBroadcast" method="post" path="/v1/broadcasts/{id}/send" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.broadcasts.send({
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
import { broadcastsSend } from "emailr/funcs/broadcastsSend.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await broadcastsSend(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("broadcastsSend failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.SendBroadcastRequest](../../models/operations/sendbroadcastrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.SendBroadcastResponse](../../models/sendbroadcastresponse.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 404                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## get

Get a specific broadcast by ID

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getBroadcast" method="get" path="/v1/broadcasts/{id}" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.broadcasts.get({
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
import { broadcastsGet } from "emailr/funcs/broadcastsGet.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await broadcastsGet(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("broadcastsGet failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetBroadcastRequest](../../models/operations/getbroadcastrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.Broadcast](../../models/broadcast.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 404                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |