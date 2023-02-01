import 'dart:convert';
import 'dart:typed_data';

import 'package:ansiCodec/src/common.dart';
import 'package:ansiCodec/src/cp1250.dart';
import 'package:ansiCodec/src/cp1251.dart';
import 'package:ansiCodec/src/cp1252.dart';
import 'package:ansiCodec/src/cp1253.dart';
import 'package:ansiCodec/src/cp1254.dart';
import 'package:ansiCodec/src/cp1255.dart';
import 'package:ansiCodec/src/cp1256.dart';
import 'package:ansiCodec/src/cp874.dart';
import 'package:ansiCodec/src/cp932.dart';
import 'package:ansiCodec/src/cp936.dart';
import 'package:ansiCodec/src/cp949.dart';
import 'package:ansiCodec/src/cp950.dart';

class AnsiCodecs implements AnsiCodecSketch {
   final AnsiCodecSketch codec;
   
   AnsiCodecs._(this.codec);
   
   factory AnsiCodecs.cp950(){
      return AnsiCodecs._(const CP950Codec());
   }
   
   factory AnsiCodecs.cp949(){
      return AnsiCodecs._(const CP949Codec());
   }
   
   factory AnsiCodecs.cp936(){
      return AnsiCodecs._(const CP936Codec());
   }
   
   factory AnsiCodecs.cp932(){
      return AnsiCodecs._(const CP932Codec());
   }
   
   factory AnsiCodecs.cp874(){
      return AnsiCodecs._(const CP874Codec());
   }
   
   factory AnsiCodecs.cp1250(){
      return AnsiCodecs._(const CP1250Codec());
   }
   
   factory AnsiCodecs.cp1251(){
      return AnsiCodecs._(const CP1251Codec());
   }
   
   factory AnsiCodecs.cp1252(){
      return AnsiCodecs._(const CP1252Codec());
   }
   
   factory AnsiCodecs.cp1253(){
      return AnsiCodecs._(const CP1253Codec());
   }
   
   factory AnsiCodecs.cp1254(){
      return AnsiCodecs._(const CP1254Codec());
   }
   
   factory AnsiCodecs.cp1255(){
      return AnsiCodecs._(const CP1255Codec());
   }
   
   factory AnsiCodecs.cp1256(){
      return AnsiCodecs._(const CP1256Codec());
   }
   
   
   @override
   String decode(List<int> encoded) {
      return codec.decode(encoded);
   }
   
   @override
   // TODO: implement decoder
   Converter<List<int>, String> get decoder => codec.decoder;
   
   @override
   List<int> encode(String input) {
      return codec.encode(input);
   }
   
   @override
   // TODO: implement encoder
   Converter<String, List<int>> get encoder => codec.encoder;
   
   @override
   Uint8List fromUnicodeToBytes(String input) {
      return codec.fromUnicodeToBytes(input);
   }
   
   @override
   String fromUnicodeToHexString(String input) {
      return codec.fromUnicodeToHexString(input);
   }
   
   @override
   Codec<String, R> fuse<R>(Codec<List<int>, R> other) {
      throw Exception('not implemented yet');
   }
   
   @override
   Codec<List<int>, String> get inverted => throw Exception('not implemented yet');
   
   
}