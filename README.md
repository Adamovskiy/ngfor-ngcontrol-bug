### Repository to reproduce Dart angular2 ngFor+ngControl bug
**Bug:**
Updating *ngFor list argument when its index is used to generate ngControl value causes
```
EXCEPTION: The null object does not have a method 'updateValue'.
...
NgForm.updateModel.<anonymous closure> (package:angular2/src/common/forms/directives/ng_form.dart:167:12)
...
```
https://github.com/dart-lang/angular2/issues/164

**To reproduce:**
```bash
pub get 
pub serve
```
then open http://localhost:8080 in Dartium or other browser. 2 seconds later exception will be thrown.
