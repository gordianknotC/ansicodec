import 'package:ansiCodec/ansiCodec.dart';
import 'package:ansiCodec/src/common.dart';

main() {
  final codecs = AnsiCodecs.cp1252();
  codecs.encode("string");
  codecs.decode([134,123]);
}
