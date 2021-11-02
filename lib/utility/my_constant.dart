import 'package:flutter/material.dart';

class MyConstant {
  // field or property นี่คือการประกาศตัวแปร
  static Color primary = Color(0xff8c0a45); //หมายถึง สีหลัก
  static Color dark = Color(0xff59001e);
  static Color light = Color(0xffc04670);
  static String appName = 'ส่งอาหาร อึ่ง';

  // method กลุ่มของคำสั่ง
  BoxDecoration whiteBox() => BoxDecoration(color: Colors.white70);

  BoxDecoration planBox() => BoxDecoration(color: light);

  BoxDecoration gradienBox() => BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1.0,
          colors: [Colors.white, light],
        ),
      );

  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: dark,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: dark,
      );

      TextStyle h2WhiteStyle() => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );


  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );

      TextStyle h3RedStyle() => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.red,
      );


}
