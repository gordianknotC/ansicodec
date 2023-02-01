Map<V, K> _reverseMap<K, V>(Map<K, V> map){
   final result = <V, K>{};
   for (final entry in map.entries){
      result[entry.value] = entry.key;
   }
   return result;
}


const UNICODE_CP1250_MAP = <int, int>{
//
//    Name:     cp1250 to Unicode table
//    Unicode version: 2.0
//    Table version: 2.01
//    Table format:  Format A
//    Date:          04/15/98
//
//    Contact:       Shawn.Steele@microsoft.com
//
//    General notes: none
//
//    Format: Three tab-separated columns
//        Column //2 is the cp1250 code (in hex)
//        Column //1 is the Unicode (in hex as 0xXXXX)
//        Column //3 is the Unicode name (follows a comment sign, '//')
//
//    The entries are in cp1250 order
//
0x0000:0x00,	//NULL
0x0001:0x01,	//START OF HEADING
0x0002:0x02,	//START OF TEXT
0x0003:0x03,	//END OF TEXT
0x0004:0x04,	//END OF TRANSMISSION
0x0005:0x05,	//ENQUIRY
0x0006:0x06,	//ACKNOWLEDGE
0x0007:0x07,	//BELL
0x0008:0x08,	//BACKSPACE
0x0009:0x09,	//HORIZONTAL TABULATION
0x000A:0x0A,	//LINE FEED
0x000B:0x0B,	//VERTICAL TABULATION
0x000C:0x0C,	//FORM FEED
0x000D:0x0D,	//CARRIAGE RETURN
0x000E:0x0E,	//SHIFT OUT
0x000F:0x0F,	//SHIFT IN
0x0010:0x10,	//DATA LINK ESCAPE
0x0011:0x11,	//DEVICE CONTROL ONE
0x0012:0x12,	//DEVICE CONTROL TWO
0x0013:0x13,	//DEVICE CONTROL THREE
0x0014:0x14,	//DEVICE CONTROL FOUR
0x0015:0x15,	//NEGATIVE ACKNOWLEDGE
0x0016:0x16,	//SYNCHRONOUS IDLE
0x0017:0x17,	//END OF TRANSMISSION BLOCK
0x0018:0x18,	//CANCEL
0x0019:0x19,	//END OF MEDIUM
0x001A:0x1A,	//SUBSTITUTE
0x001B:0x1B,	//ESCAPE
0x001C:0x1C,	//FILE SEPARATOR
0x001D:0x1D,	//GROUP SEPARATOR
0x001E:0x1E,	//RECORD SEPARATOR
0x001F:0x1F,	//UNIT SEPARATOR
0x0020:0x20,	//SPACE
0x0021:0x21,	//EXCLAMATION MARK
0x0022:0x22,	//QUOTATION MARK
0x0023:0x23,	//NUMBER SIGN
0x0024:0x24,	//DOLLAR SIGN
0x0025:0x25,	//PERCENT SIGN
0x0026:0x26,	//AMPERSAND
0x0027:0x27,	//APOSTROPHE
0x0028:0x28,	//LEFT PARENTHESIS
0x0029:0x29,	//RIGHT PARENTHESIS
0x002A:0x2A,	//ASTERISK
0x002B:0x2B,	//PLUS SIGN
0x002C:0x2C,	//COMMA
0x002D:0x2D,	//HYPHEN-MINUS
0x002E:0x2E,	//FULL STOP
0x002F:0x2F,	//SOLIDUS
0x0030:0x30,	//DIGIT ZERO
0x0031:0x31,	//DIGIT ONE
0x0032:0x32,	//DIGIT TWO
0x0033:0x33,	//DIGIT THREE
0x0034:0x34,	//DIGIT FOUR
0x0035:0x35,	//DIGIT FIVE
0x0036:0x36,	//DIGIT SIX
0x0037:0x37,	//DIGIT SEVEN
0x0038:0x38,	//DIGIT EIGHT
0x0039:0x39,	//DIGIT NINE
0x003A:0x3A,	//COLON
0x003B:0x3B,	//SEMICOLON
0x003C:0x3C,	//LESS-THAN SIGN
0x003D:0x3D,	//EQUALS SIGN
0x003E:0x3E,	//GREATER-THAN SIGN
0x003F:0x3F,	//QUESTION MARK
0x0040:0x40,	//COMMERCIAL AT
0x0041:0x41,	//LATIN CAPITAL LETTER A
0x0042:0x42,	//LATIN CAPITAL LETTER B
0x0043:0x43,	//LATIN CAPITAL LETTER C
0x0044:0x44,	//LATIN CAPITAL LETTER D
0x0045:0x45,	//LATIN CAPITAL LETTER E
0x0046:0x46,	//LATIN CAPITAL LETTER F
0x0047:0x47,	//LATIN CAPITAL LETTER G
0x0048:0x48,	//LATIN CAPITAL LETTER H
0x0049:0x49,	//LATIN CAPITAL LETTER I
0x004A:0x4A,	//LATIN CAPITAL LETTER J
0x004B:0x4B,	//LATIN CAPITAL LETTER K
0x004C:0x4C,	//LATIN CAPITAL LETTER L
0x004D:0x4D,	//LATIN CAPITAL LETTER M
0x004E:0x4E,	//LATIN CAPITAL LETTER N
0x004F:0x4F,	//LATIN CAPITAL LETTER O
0x0050:0x50,	//LATIN CAPITAL LETTER P
0x0051:0x51,	//LATIN CAPITAL LETTER Q
0x0052:0x52,	//LATIN CAPITAL LETTER R
0x0053:0x53,	//LATIN CAPITAL LETTER S
0x0054:0x54,	//LATIN CAPITAL LETTER T
0x0055:0x55,	//LATIN CAPITAL LETTER U
0x0056:0x56,	//LATIN CAPITAL LETTER V
0x0057:0x57,	//LATIN CAPITAL LETTER W
0x0058:0x58,	//LATIN CAPITAL LETTER X
0x0059:0x59,	//LATIN CAPITAL LETTER Y
0x005A:0x5A,	//LATIN CAPITAL LETTER Z
0x005B:0x5B,	//LEFT SQUARE BRACKET
0x005C:0x5C,	//REVERSE SOLIDUS
0x005D:0x5D,	//RIGHT SQUARE BRACKET
0x005E:0x5E,	//CIRCUMFLEX ACCENT
0x005F:0x5F,	//LOW LINE
0x0060:0x60,	//GRAVE ACCENT
0x0061:0x61,	//LATIN SMALL LETTER A
0x0062:0x62,	//LATIN SMALL LETTER B
0x0063:0x63,	//LATIN SMALL LETTER C
0x0064:0x64,	//LATIN SMALL LETTER D
0x0065:0x65,	//LATIN SMALL LETTER E
0x0066:0x66,	//LATIN SMALL LETTER F
0x0067:0x67,	//LATIN SMALL LETTER G
0x0068:0x68,	//LATIN SMALL LETTER H
0x0069:0x69,	//LATIN SMALL LETTER I
0x006A:0x6A,	//LATIN SMALL LETTER J
0x006B:0x6B,	//LATIN SMALL LETTER K
0x006C:0x6C,	//LATIN SMALL LETTER L
0x006D:0x6D,	//LATIN SMALL LETTER M
0x006E:0x6E,	//LATIN SMALL LETTER N
0x006F:0x6F,	//LATIN SMALL LETTER O
0x0070:0x70,	//LATIN SMALL LETTER P
0x0071:0x71,	//LATIN SMALL LETTER Q
0x0072:0x72,	//LATIN SMALL LETTER R
0x0073:0x73,	//LATIN SMALL LETTER S
0x0074:0x74,	//LATIN SMALL LETTER T
0x0075:0x75,	//LATIN SMALL LETTER U
0x0076:0x76,	//LATIN SMALL LETTER V
0x0077:0x77,	//LATIN SMALL LETTER W
0x0078:0x78,	//LATIN SMALL LETTER X
0x0079:0x79,	//LATIN SMALL LETTER Y
0x007A:0x7A,	//LATIN SMALL LETTER Z
0x007B:0x7B,	//LEFT CURLY BRACKET
0x007C:0x7C,	//VERTICAL LINE
0x007D:0x7D,	//RIGHT CURLY BRACKET
0x007E:0x7E,	//TILDE
0x007F:0x7F,	//DELETE
0x20AC:0x80,	//EURO SIGN
//0x81	      	//UNDEFINED
0x201A:0x82,	//SINGLE LOW-9 QUOTATION MARK
//0x83	      	//UNDEFINED
0x201E:0x84,	//DOUBLE LOW-9 QUOTATION MARK
0x2026:0x85,	//HORIZONTAL ELLIPSIS
0x2020:0x86,	//DAGGER
0x2021:0x87,	//DOUBLE DAGGER
//0x88	      	//UNDEFINED
0x2030:0x89,	//PER MILLE SIGN
0x0160:0x8A,	//LATIN CAPITAL LETTER S WITH CARON
0x2039:0x8B,	//SINGLE LEFT-POINTING ANGLE QUOTATION MARK
0x015A:0x8C,	//LATIN CAPITAL LETTER S WITH ACUTE
0x0164:0x8D,	//LATIN CAPITAL LETTER T WITH CARON
0x017D:0x8E,	//LATIN CAPITAL LETTER Z WITH CARON
0x0179:0x8F,	//LATIN CAPITAL LETTER Z WITH ACUTE
//0x90	      	//UNDEFINED
0x2018:0x91,	//LEFT SINGLE QUOTATION MARK
0x2019:0x92,	//RIGHT SINGLE QUOTATION MARK
0x201C:0x93,	//LEFT DOUBLE QUOTATION MARK
0x201D:0x94,	//RIGHT DOUBLE QUOTATION MARK
0x2022:0x95,	//BULLET
0x2013:0x96,	//EN DASH
0x2014:0x97,	//EM DASH
//0x98	      	//UNDEFINED
0x2122:0x99,	//TRADE MARK SIGN
0x0161:0x9A,	//LATIN SMALL LETTER S WITH CARON
0x203A:0x9B,	//SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
0x015B:0x9C,	//LATIN SMALL LETTER S WITH ACUTE
0x0165:0x9D,	//LATIN SMALL LETTER T WITH CARON
0x017E:0x9E,	//LATIN SMALL LETTER Z WITH CARON
0x017A:0x9F,	//LATIN SMALL LETTER Z WITH ACUTE
0x00A0:0xA0,	//NO-BREAK SPACE
0x02C7:0xA1,	//CARON
0x02D8:0xA2,	//BREVE
0x0141:0xA3,	//LATIN CAPITAL LETTER L WITH STROKE
0x00A4:0xA4,	//CURRENCY SIGN
0x0104:0xA5,	//LATIN CAPITAL LETTER A WITH OGONEK
0x00A6:0xA6,	//BROKEN BAR
0x00A7:0xA7,	//SECTION SIGN
0x00A8:0xA8,	//DIAERESIS
0x00A9:0xA9,	//COPYRIGHT SIGN
0x015E:0xAA,	//LATIN CAPITAL LETTER S WITH CEDILLA
0x00AB:0xAB,	//LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
0x00AC:0xAC,	//NOT SIGN
0x00AD:0xAD,	//SOFT HYPHEN
0x00AE:0xAE,	//REGISTERED SIGN
0x017B:0xAF,	//LATIN CAPITAL LETTER Z WITH DOT ABOVE
0x00B0:0xB0,	//DEGREE SIGN
0x00B1:0xB1,	//PLUS-MINUS SIGN
0x02DB:0xB2,	//OGONEK
0x0142:0xB3,	//LATIN SMALL LETTER L WITH STROKE
0x00B4:0xB4,	//ACUTE ACCENT
0x00B5:0xB5,	//MICRO SIGN
0x00B6:0xB6,	//PILCROW SIGN
0x00B7:0xB7,	//MIDDLE DOT
0x00B8:0xB8,	//CEDILLA
0x0105:0xB9,	//LATIN SMALL LETTER A WITH OGONEK
0x015F:0xBA,	//LATIN SMALL LETTER S WITH CEDILLA
0x00BB:0xBB,	//RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
0x013D:0xBC,	//LATIN CAPITAL LETTER L WITH CARON
0x02DD:0xBD,	//DOUBLE ACUTE ACCENT
0x013E:0xBE,	//LATIN SMALL LETTER L WITH CARON
0x017C:0xBF,	//LATIN SMALL LETTER Z WITH DOT ABOVE
0x0154:0xC0,	//LATIN CAPITAL LETTER R WITH ACUTE
0x00C1:0xC1,	//LATIN CAPITAL LETTER A WITH ACUTE
0x00C2:0xC2,	//LATIN CAPITAL LETTER A WITH CIRCUMFLEX
0x0102:0xC3,	//LATIN CAPITAL LETTER A WITH BREVE
0x00C4:0xC4,	//LATIN CAPITAL LETTER A WITH DIAERESIS
0x0139:0xC5,	//LATIN CAPITAL LETTER L WITH ACUTE
0x0106:0xC6,	//LATIN CAPITAL LETTER C WITH ACUTE
0x00C7:0xC7,	//LATIN CAPITAL LETTER C WITH CEDILLA
0x010C:0xC8,	//LATIN CAPITAL LETTER C WITH CARON
0x00C9:0xC9,	//LATIN CAPITAL LETTER E WITH ACUTE
0x0118:0xCA,	//LATIN CAPITAL LETTER E WITH OGONEK
0x00CB:0xCB,	//LATIN CAPITAL LETTER E WITH DIAERESIS
0x011A:0xCC,	//LATIN CAPITAL LETTER E WITH CARON
0x00CD:0xCD,	//LATIN CAPITAL LETTER I WITH ACUTE
0x00CE:0xCE,	//LATIN CAPITAL LETTER I WITH CIRCUMFLEX
0x010E:0xCF,	//LATIN CAPITAL LETTER D WITH CARON
0x0110:0xD0,	//LATIN CAPITAL LETTER D WITH STROKE
0x0143:0xD1,	//LATIN CAPITAL LETTER N WITH ACUTE
0x0147:0xD2,	//LATIN CAPITAL LETTER N WITH CARON
0x00D3:0xD3,	//LATIN CAPITAL LETTER O WITH ACUTE
0x00D4:0xD4,	//LATIN CAPITAL LETTER O WITH CIRCUMFLEX
0x0150:0xD5,	//LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
0x00D6:0xD6,	//LATIN CAPITAL LETTER O WITH DIAERESIS
0x00D7:0xD7,	//MULTIPLICATION SIGN
0x0158:0xD8,	//LATIN CAPITAL LETTER R WITH CARON
0x016E:0xD9,	//LATIN CAPITAL LETTER U WITH RING ABOVE
0x00DA:0xDA,	//LATIN CAPITAL LETTER U WITH ACUTE
0x0170:0xDB,	//LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
0x00DC:0xDC,	//LATIN CAPITAL LETTER U WITH DIAERESIS
0x00DD:0xDD,	//LATIN CAPITAL LETTER Y WITH ACUTE
0x0162:0xDE,	//LATIN CAPITAL LETTER T WITH CEDILLA
0x00DF:0xDF,	//LATIN SMALL LETTER SHARP S
0x0155:0xE0,	//LATIN SMALL LETTER R WITH ACUTE
0x00E1:0xE1,	//LATIN SMALL LETTER A WITH ACUTE
0x00E2:0xE2,	//LATIN SMALL LETTER A WITH CIRCUMFLEX
0x0103:0xE3,	//LATIN SMALL LETTER A WITH BREVE
0x00E4:0xE4,	//LATIN SMALL LETTER A WITH DIAERESIS
0x013A:0xE5,	//LATIN SMALL LETTER L WITH ACUTE
0x0107:0xE6,	//LATIN SMALL LETTER C WITH ACUTE
0x00E7:0xE7,	//LATIN SMALL LETTER C WITH CEDILLA
0x010D:0xE8,	//LATIN SMALL LETTER C WITH CARON
0x00E9:0xE9,	//LATIN SMALL LETTER E WITH ACUTE
0x0119:0xEA,	//LATIN SMALL LETTER E WITH OGONEK
0x00EB:0xEB,	//LATIN SMALL LETTER E WITH DIAERESIS
0x011B:0xEC,	//LATIN SMALL LETTER E WITH CARON
0x00ED:0xED,	//LATIN SMALL LETTER I WITH ACUTE
0x00EE:0xEE,	//LATIN SMALL LETTER I WITH CIRCUMFLEX
0x010F:0xEF,	//LATIN SMALL LETTER D WITH CARON
0x0111:0xF0,	//LATIN SMALL LETTER D WITH STROKE
0x0144:0xF1,	//LATIN SMALL LETTER N WITH ACUTE
0x0148:0xF2,	//LATIN SMALL LETTER N WITH CARON
0x00F3:0xF3,	//LATIN SMALL LETTER O WITH ACUTE
0x00F4:0xF4,	//LATIN SMALL LETTER O WITH CIRCUMFLEX
0x0151:0xF5,	//LATIN SMALL LETTER O WITH DOUBLE ACUTE
0x00F6:0xF6,	//LATIN SMALL LETTER O WITH DIAERESIS
0x00F7:0xF7,	//DIVISION SIGN
0x0159:0xF8,	//LATIN SMALL LETTER R WITH CARON
0x016F:0xF9,	//LATIN SMALL LETTER U WITH RING ABOVE
0x00FA:0xFA,	//LATIN SMALL LETTER U WITH ACUTE
0x0171:0xFB,	//LATIN SMALL LETTER U WITH DOUBLE ACUTE
0x00FC:0xFC,	//LATIN SMALL LETTER U WITH DIAERESIS
0x00FD:0xFD,	//LATIN SMALL LETTER Y WITH ACUTE
0x0163:0xFE,	//LATIN SMALL LETTER T WITH CEDILLA
0x02D9:0xFF,	//DOT ABOVE
};
final Map<int, int> CP1250_UNICODE_MAP = _reverseMap(UNICODE_CP1250_MAP);


