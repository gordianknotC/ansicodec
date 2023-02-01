import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP1255_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP1255_MAP;



class CP1255DecoderConverter extends Converter<List<int>, String> {
   CP1255DecoderConverter();
   
   String convert(List<int> encoded) {
      // CP1255 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP1255_UNICODE_MAP[e] ?? e));
   }
}

class CP1255EncoderConverter extends Converter<String, List<int>> {
   CP1255EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to CP1255
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP1255_MAP[e] ?? e).toList();
   }
}



class CP1255Codec  implements AnsiCodecSketch  {
   const CP1255Codec();
   @override
   CP1255DecoderConverter get decoder => CP1255DecoderConverter();
   
   @override
   CP1255EncoderConverter get encoder => CP1255EncoderConverter();
   
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


