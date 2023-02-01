
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

## 支援的 codec
```dart
class AnsiCodecs implements AnsiCodecSketch {
  final AnsiCodecSketch codec;

  AnsiCodecs._(this.codec);

  factory AnsiCodecs.cp950() {
    return AnsiCodecs._(const CP950Codec());
  }

  factory AnsiCodecs.cp949() {
    return AnsiCodecs._(const CP949Codec());
  }

  factory AnsiCodecs.cp936() {
    return AnsiCodecs._(const CP936Codec());
  }

  factory AnsiCodecs.cp932() {
    return AnsiCodecs._(const CP932Codec());
  }

  factory AnsiCodecs.cp874() {
    return AnsiCodecs._(const CP874Codec());
  }

  factory AnsiCodecs.cp1250() {
    return AnsiCodecs._(const CP1250Codec());
  }

  factory AnsiCodecs.cp1251() {
    return AnsiCodecs._(const CP1251Codec());
  }

  factory AnsiCodecs.cp1252() {
    return AnsiCodecs._(const CP1252Codec());
  }

  factory AnsiCodecs.cp1253() {
    return AnsiCodecs._(const CP1253Codec());
  }

  factory AnsiCodecs.cp1254() {
    return AnsiCodecs._(const CP1254Codec());
  }

  factory AnsiCodecs.cp1255() {
    return AnsiCodecs._(const CP1255Codec());
  }

  factory AnsiCodecs.cp1256() {
    return AnsiCodecs._(const CP1256Codec());
  }
}
```