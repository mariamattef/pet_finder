import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF44BDB6);
  static const Color secondaryColor = Color(0xffE1F8F9);
  static const Color errorColor = Colors.redAccent;
  static const textColor = Color(0xff8F8F8F);
  static const lightGray = Color(0xffF5F5F5);
  static const textColor1 = Color(0xff1D1E20);

  static ThemeData get theme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: secondaryColor,
      fontFamily: 'Poppins',
      appBarTheme: const AppBarTheme(
        backgroundColor: secondaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: textColor1),
      ),

      // textTheme: const TextTheme(
      //   displayLarge: TextStyle(
      //     fontSize: 28.0,
      //     fontWeight: FontWeight.bold,
      //     color: textColor1,
      //   ),
      //   displayMedium: TextStyle(
      //     fontSize: 24.0,
      //     fontWeight: FontWeight.bold,
      //     color: textColor1,
      //   ),
      //   titleMedium: TextStyle(fontSize: 16.0, color: textColor1),
      //   bodyLarge: TextStyle(fontSize: 14.0, color: colorGray),
      // ),

      // inputDecorationTheme: InputDecorationTheme(
      //   labelStyle: const TextStyle(color: textColor1),
      //   enabledBorder: const UnderlineInputBorder(
      //     borderSide: BorderSide(color: Colors.black12),
      //   ),
      //   focusedBorder: const UnderlineInputBorder(
      //     borderSide: BorderSide(color: mainColor),
      //   ),
      // ),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     foregroundColor: Colors.white,
      //     backgroundColor: mainColor,
      //     minimumSize: const Size(double.infinity, 50),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(12.r),
      //     ),
      //     textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //   ),
      // ),
    );
  }
}
