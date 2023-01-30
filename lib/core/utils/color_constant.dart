import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color black900B2 = fromHex('#b2000000');

  static Color red600 = fromHex('#e93e30');

  static Color red300 = fromHex('#d97356');

  static Color gray50 = fromHex('#f8f2ff');

  static Color red50 = fromHex('#fff3f2');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90001 = fromHex('#170600');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#3e4756');

  static Color deepOrange400 = fromHex('#ff6652');

  static Color deepPurpleA200 = fromHex('#9c4df4');

  static Color gray70099 = fromHex('#995d5a6f');

  static Color yellow100 = fromHex('#fff2ce');

  static Color gray700 = fromHex('#5d5a6f');

  static Color gray90026 = fromHex('#260a033c');

  static Color red5002 = fromHex('#fff0ec');

  static Color gray90066 = fromHex('#660a033c');

  static Color indigo50 = fromHex('#ebeaf4');

  static Color gray900 = fromHex('#0a033c');

  static Color gray90001 = fromHex('#0b033c');

  static Color red5001 = fromHex('#ffeee9');

  static Color deepOrange40033 = fromHex('#33ff6652');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#ececec');

  static Color gray300 = fromHex('#dedde4');

  static Color orange200 = fromHex('#eebc74');

  static Color gray100 = fromHex('#f7f7f7');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color black90099 = fromHex('#99000000');

  static Color black900Cc = fromHex('#cc000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f7f5fa');

  static Color cyan50 = fromHex('#e5fff2');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
