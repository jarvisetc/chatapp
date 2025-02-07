import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xff1e1e1e),
      primaryColor: Color(0xff5ebaae),
      buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff5ebaae),
          minWidth: double.infinity,
          height: 45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff5ebaae),
          minimumSize: Size(double.infinity, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff5ebaae),
            width: 2,
          ),
        ),
      ),
    );
  }

  static ThemeData light() {
    return ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xffffffff),
        primaryColor: Color(0xff5ebaae),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff5ebaae),
            minimumSize: Size(double.infinity, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: UnderlineInputBorder(
                borderSide: BorderSide(
          color: Color(0xff5ebaae),
          width: 3,
        ))));
  }
}
