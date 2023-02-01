import 'dart:convert';
import 'dart:typed_data';
import 'common.dart';
import 'table.dart';

final _ANSI_UNICODE_MAP = CP936_UNICODE_MAP;
const _UNICODE_ANSI_MAP = UNICODE_CP936_MAP;



class CP936DecoderConverter extends Converter<List<int>, String> {
   const CP936DecoderConverter();
   
   String convert(List<int> encoded) {
      // cp936 to unicode
      return pDecoderConvert(encoded, _ANSI_UNICODE_MAP);
      //return String.fromCharCodes(encoded.map((e) => CP936_UNICODE_MAP[e] ?? e));
   }
}

class CP936EncoderConverter extends Converter<String, List<int>> {
   const CP936EncoderConverter();
   
   List<int> convert(String input) {
      // unicode to cp936
      return pEncoderConvert(input, _UNICODE_ANSI_MAP);
      //return input.codeUnits.map((e) => UNICODE_CP936_MAP[e] ?? e).toList();
   }
}



class CP936Codec  implements AnsiCodecSketch  {
   const CP936Codec();
   
   @override
   CP936DecoderConverter get decoder => CP936DecoderConverter();
   
   @override
   CP936EncoderConverter get encoder => CP936EncoderConverter();
   
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


