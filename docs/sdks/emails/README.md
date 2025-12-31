# Emails

## Overview

Email sending and management

### Available Operations

* [send](#send) - Send an email
* [get](#get) - Get email by ID
* [list](#list) - List emails

## send

Send an email to one or multiple recipients

### Example Usage

<!-- UsageSnippet language="typescript" operationID="sendEmail" method="post" path="/v1/emails/send" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.emails.send({
    from: "sender@example.com",
    to: "recipient@example.com",
    subject: "Hello World",
    html: "<h1>Hello</h1>",
    text: "Hello",
    templateId: "123e4567-e89b-12d3-a456-426614174000",
    templateData: {
      "name": "John",
      "company": "Acme",
    },
    tags: {
      "campaign": "welcome",
      "source": "signup",
    },
    attachments: [
      {
        filename: "document.pdf",
        content: "JVBERi0xLjQKJe...",
        contentType: "application/pdf",
      },
    ],
    replyTo: {
      inReplyTo: "<message-id@domain.com>",
      threadId: "123e4567-e89b-12d3-a456-426614174000",
      parentEmailId: "123e4567-e89b-12d3-a456-426614174000",
    },
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { emailsSend } from "emailr/funcs/emailsSend.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await emailsSend(emailr, {
    from: "sender@example.com",
    to: "recipient@example.com",
    subject: "Hello World",
    html: "<h1>Hello</h1>",
    text: "Hello",
    templateId: "123e4567-e89b-12d3-a456-426614174000",
    templateData: {
      "name": "John",
      "company": "Acme",
    },
    tags: {
      "campaign": "welcome",
      "source": "signup",
    },
    attachments: [
      {
        filename: "document.pdf",
        content: "JVBERi0xLjQKJe...",
        contentType: "application/pdf",
      },
    ],
    replyTo: {
      inReplyTo: "<message-id@domain.com>",
      threadId: "123e4567-e89b-12d3-a456-426614174000",
      parentEmailId: "123e4567-e89b-12d3-a456-426614174000",
    },
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("emailsSend failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.SendEmailRequest](../../models/sendemailrequest.md)                                                                                                                    | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.SendEmailResponse](../../models/sendemailresponse.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 400, 401, 429             | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## get

Retrieve details of a specific email

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getEmail" method="get" path="/v1/emails/{id}" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.emails.get({
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
import { emailsGet } from "emailr/funcs/emailsGet.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await emailsGet(emailr, {
    id: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("emailsGet failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetEmailRequest](../../models/operations/getemailrequest.md)                                                                                                       | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.Email](../../models/email.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 401, 404                  | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |

## list

Get a paginated list of sent emails

### Example Usage

<!-- UsageSnippet language="typescript" operationID="listEmails" method="get" path="/v1/emails" -->
```typescript
import { Emailr } from "emailr";

const emailr = new Emailr({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const result = await emailr.emails.list({});

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { EmailrCore } from "emailr/core.js";
import { emailsList } from "emailr/funcs/emailsList.js";

// Use `EmailrCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const emailr = new EmailrCore({
  bearerAuth: process.env["EMAILR_BEARER_AUTH"] ?? "",
});

async function run() {
  const res = await emailsList(emailr, {});
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("emailsList failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListEmailsRequest](../../models/operations/listemailsrequest.md)                                                                                                   | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.ListEmailsResponse](../../models/operations/listemailsresponse.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.ErrorT             | 401                       | application/json          |
| errors.EmailrDefaultError | 4XX, 5XX                  | \*/\*                     |