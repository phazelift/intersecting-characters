# string-intersection

### Collects all characters from string that are found in a second string. Always returns an array, containing the found characters, if any

<br/>

---

```typescript
const intersection = require('string-intersection');

intersection('love', 'evolve');
// [ 'l', 'o', 'v', 'e' ]


// you can add a handler for handling type errors (see: message-events npm package)
intersection.onError(console.error);
```