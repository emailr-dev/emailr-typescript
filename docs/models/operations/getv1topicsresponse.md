# GetV1TopicsResponse

List of topics

## Example Usage

```typescript
import { GetV1TopicsResponse } from "emailr/models/operations";

let value: GetV1TopicsResponse = {
  topics: [
    {
      id: "1414ffce-5e26-4e4c-b589-9ed7e73e2ef0",
      organizationId: "083da12d-4e00-40f5-97e2-b955669a2e01",
      name: "<value>",
      description: "unblinking below premise",
      createdAt: "1732472779266",
      updatedAt: "1735624785377",
    },
  ],
};
```

## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `topics`                                                                     | [operations.GetV1TopicsTopic](../../models/operations/getv1topicstopic.md)[] | :heavy_check_mark:                                                           | N/A                                                                          |