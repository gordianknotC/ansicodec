import 'dart:convert';
import 'dart:convert';
import 'dart:typed_data';
import 'package:hex/hex.dart';

enum AnsiLanguages {
   Arabic,
   SimplifiedChinese,
   TraditionalChinese,
   Russian,
   Czech,
   Dutch,
   English,
   German,
   French,
   Portuguese,
   Italian,
   Spanish,
   Greek,
   Hebrew,
   Hungarian,
   Icelandic,
   Japanese,
   Korean,
   Nordic,
   Norwegian,
   Danish,
   Polish,
   Slovenian,
   Swedish,
   Finnish,
   Thai,
   Turkish
}

/// https://docs.microsoft.com/zh-tw/office/client-developer/access/desktop-database-reference/languageconstants-enumeration-dao
const AnsiLangMapping = <int, List<AnsiLanguages>>{
   874: [AnsiLanguages.Thai],
   936: [AnsiLanguages.SimplifiedChinese],
   932: [AnsiLanguages.Japanese],
   949: [AnsiLanguages.Korean],
   950: [AnsiLanguages.TraditionalChinese],
   1250: [AnsiLanguages.Czech, AnsiLanguages.Hungarian, AnsiLanguages.Polish, AnsiLanguages.Slovenian],
   1251: [AnsiLanguages.Russian],
   1252: [AnsiLanguages.Dutch, AnsiLanguages.English, AnsiLanguages.German,
      AnsiLanguages.French, AnsiLanguages.Portuguese, AnsiLanguages.Italian,
      AnsiLanguages.Spanish, AnsiLanguages.Finnish, AnsiLanguages.Danish,
      AnsiLanguages.Norwegian, AnsiLanguages.Nordic, AnsiLanguages.Icelandic
   ],
   1253: [AnsiLanguages.Greek],
   1254: [AnsiLanguages.Turkish],
   1255: [AnsiLanguages.Hebrew],
   1256: [AnsiLanguages.Arabic],
};


bool _isAscii(int i) {
   return i <= 127;
}

bool _isUnicode(int i) {
   return i >= 256;
}



abstract class AnsiCodecSketch extends Codec<String, List<int>> {
   Uint8List fromUnicodeToBytes(String input);
   String    fromUnicodeToHexString(String input);
}

String pDecoderConvert(List<int> encoded, Map<int, int> MAP) {
   final result = <int>[];
   final maxlen = encoded.length;
   for (var i = 0; i < maxlen; ++i) {
      var cp950code = encoded[i];
      if (!_isAscii(cp950code)) {
         if (_isUnicode(cp950code)) {
            final unicode = !_isAscii(cp950code) ? MAP[cp950code] : cp950code;
            result.add(unicode ?? cp950code);
         } else {
            //consecutive two bytes
            if (i < maxlen - 1) {
               cp950code = 256 * cp950code + encoded[i + 1];
               final unicode = !_isAscii(cp950code) ? MAP[cp950code] : cp950code;
               result.add(unicode ?? cp950code);
               i ++;
            } else {
               throw Exception('ansiCodec Decode error\nunexpected ends, i: $i, maxlen: $maxlen');
            }
         }
      } else {
         result.add(cp950code);
      }
   }
   return String.fromCharCodes(result);
   //return String.fromCharCodes(encoded.map((e) => CP950_UNICODE_MAP[e] ?? e));
}

List<int> pEncoderConvert(String input, Map<int, int> MAP) {
   // unicode to cp950
   final result = <int>[];
   final maxlen = input.codeUnits.length;
   for (var i = 0; i < maxlen; ++i) {
      var unicode = input.codeUnits[i];
      int cp950;
      if (_isAscii(unicode)) {
         cp950 = unicode;
      } else {
         if (_isUnicode(unicode)){
            cp950 = MAP[unicode] ?? 63; // '?'
         } else{
            cp950 = unicode;
         }
      }
      result.add(cp950);
   }
   return result;
   //return input.codeUnits.map((e) => UNICODE_CP950_MAP[e] ?? e).toList();
}


Uint8List pUnicodeToBytes(String input, List<int> encode(String input)) {
   return Uint8List.fromList(encode(input).fold<List<int>>([], (all, i) {
      return i < 256
             ? all + [i]
             : all + HEX.decode(i.toRadixString(16));
   }));
}

String pUnicodeToHexString(String input, List<int> encode(String input)) {
   return encode(input).map((x) => x.toRadixString(16)).join('');
}














