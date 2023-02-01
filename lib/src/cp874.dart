import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP874_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP874_MAP;



class CP874DecoderConverter extends Converter<List<int>, String> {
   const CP874DecoderConverter();
   
   String convert(List<int> encoded) {
      // CP874 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP874_UNICODE_MAP[e] ?? e));
   }
}

class CP874EncoderConverter extends Converter<String, List<int>> {
   const CP874EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to CP874
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP874_MAP[e] ?? e).toList();
   }
}



class CP874Codec  implements AnsiCodecSketch  {
   const CP874Codec();
   
   @override
   CP874DecoderConverter get decoder => CP874DecoderConverter();
   
   @override
   CP874EncoderConverter get encoder => CP874EncoderConverter();
   
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


