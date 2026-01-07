# TeamMember

## Example Usage

```typescript
import { TeamMember } from "emailr/models";

let value: TeamMember = {
  id: "d2cc3438-3efc-4c26-b637-12742be137ad",
  organizationId: "e6d18a15-f460-43fd-bdca-713003f1a06f",
  userId: "5b67a1ed-9391-4584-b3ff-eaed33c06611",
  role: "<value>",
  createdAt: new Date("2024-11-11T06:50:44.046Z"),
  profiles: {
    id: "2b43e9af-f932-4ff5-8fda-9930b9a8eca7",
    email: "Guy19@yahoo.com",
    fullName: "Elsie Harris",
    avatarUrl: "https://next-accountability.info",
  },
};
```

## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `organizationId`                                                                              | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `userId`                                                                                      | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `role`                                                                                        | *string*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `createdAt`                                                                                   | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `profiles`                                                                                    | [models.Profiles](../models/profiles.md)                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |