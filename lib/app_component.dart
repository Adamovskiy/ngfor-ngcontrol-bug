import 'dart:async';

import 'package:angular2/core.dart';

@Component(
    selector: 'root',
    template: '''
<form>
    <input *ngFor="let val of vals; let idx = index" [ngModel]="val" ngControl="input-{{idx}}">
</form>
''')
class AppComponent {
  Iterable<String> vals;
  bool b = false;

  void _update() {
    vals = new List.from([b.toString()]);
    b = !b;
  }

  AppComponent() {
    _update();
    new Timer.periodic(const Duration(seconds:1), (Timer t) => _update());
  }
}
