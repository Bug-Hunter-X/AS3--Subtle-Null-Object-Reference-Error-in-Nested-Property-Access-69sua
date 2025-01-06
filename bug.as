The following ActionScript 3 code attempts to access a property of an object that may be null.  This can cause a runtime error (1009: null object reference).  The issue is particularly subtle because the code might work in some cases, leading to intermittent failures.

```actionscript
// Example code with potential null object reference error
public function myFunction(data:Object):void {
  if (data != null) {
    trace(data.someProperty.someNestedProperty);
  }
}
```

The problem is that even if `data` is not null, `data.someProperty` could be null, causing the error when trying to access `someNestedProperty`. This is exacerbated if `someProperty` itself is dynamically added to `data` or comes from an external source where its existence isn't guaranteed.