A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

Dart AnsiCodec, 沒有全面測試。

## Usage
```dart
import 'package:ansiCodec/ansiCodec.dart';
main(){
  final codecs = AnsiCodecs.cp1252();
  codecs.encode("string");
  codecs.decode([134,123]);
}
```

