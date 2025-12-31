# Type

## Example Usage

```typescript
import { Type } from "emailr/models";

let value: Type = "TXT";
```

## Values

This is an open enum. Unrecognized values will be captured as the `Unrecognized<string>` branded type.

```typescript
"TXT" | "MX" | "CNAME" | Unrecognized<string>
```