import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP932_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP932_MAP;



class CP932DecoderConverter extends Converter<List<int>, String> {
   const CP932DecoderConverter();
   
   String convert(List<int> encoded) {
      // CP932 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP932_UNICODE_MAP[e] ?? e));
   }
}

class CP932EncoderConverter extends Converter<String, List<int>> {
   const CP932EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to CP932
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP932_MAP[e] ?? e).toList();
   }
}



class CP932Codec  implements AnsiCodecSketch  {
   const CP932Codec();
   
   @override
   CP932DecoderConverter get decoder => CP932DecoderConverter();
   
   @override
   CP932EncoderConverter get encoder => CP932EncoderConverter();
   
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


