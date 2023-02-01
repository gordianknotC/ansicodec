import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP1253_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP1253_MAP;



class CP1253DecoderConverter extends Converter<List<int>, String> {
   const CP1253DecoderConverter();
   
   String convert(List<int> encoded) {
      // CP1253 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP1253_UNICODE_MAP[e] ?? e));
   }
}

class CP1253EncoderConverter extends Converter<String, List<int>> {
   const CP1253EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to CP1253
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP1253_MAP[e] ?? e).toList();
   }
}



class CP1253Codec  implements AnsiCodecSketch  {
   const CP1253Codec();
   @override
   CP1253DecoderConverter get decoder => CP1253DecoderConverter();
   
   @override
   CP1253EncoderConverter get encoder => CP1253EncoderConverter();
   
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


