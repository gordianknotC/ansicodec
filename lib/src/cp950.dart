import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP950_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP950_MAP;



class CP950DecoderConverter extends Converter<List<int>, String> {
   const CP950DecoderConverter();
   
   String convert(List<int> encoded) {
      // cp950 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP950_UNICODE_MAP[e] ?? e));
   }
}

class CP950EncoderConverter extends Converter<String, List<int>> {
   const CP950EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to cp950
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP950_MAP[e] ?? e).toList();
   }
}



class CP950Codec  implements AnsiCodecSketch  {
   const CP950Codec();
   
   @override
   CP950DecoderConverter get decoder => CP950DecoderConverter();
   
   @override
   CP950EncoderConverter get encoder => CP950EncoderConverter();
   
   @override
   String decode(List<int> encoded) {
      // to unicode string
      return decoder.convert(encoded);
   }
   
   @override
   List<int> encode(String input) {
      // from unicode string
      return encoder.convert(input);
   }
   
   Uint8List fromUnicodeToBytes(String input) {
      return pUnicodeToBytes(input, encode);
   }
   
   String fromUnicodeToHexString(String input) {
      return pUnicodeToHexString(input, encode);
   }
   
   @override
   Codec<String, R> fuse<R>(Codec<List<int>, R> other) {
      return null;
   }
   
   @override
   Codec<List<int>, String> get inverted => null;
}


