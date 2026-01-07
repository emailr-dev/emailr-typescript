# Provider

## Example Usage

```typescript
import { Provider } from "emailr/models/operations";

let value: Provider = "supabase";
```

## Values

This is an open enum. Unrecognized values will be captured as the `Unrecognized<string>` branded type.

```typescript
"supabase" | "vercel" | Unrecognized<string>
```