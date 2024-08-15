import 'custom_themes/bottom_sheet_theme.dart';
import 'package:flutter/material.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._(); 


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.LightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.LightAppBarTheme,
    checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.LightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.LightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.LightInputDecorationTheme

  );
  static ThemeData DarkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.DarkTextTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.DarkAppBarTheme,
      checkboxTheme: TCheckboxTheme.DarkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.DarkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.DarkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.DarkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.DarkInputDecorationTheme

  );

}