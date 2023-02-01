
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

