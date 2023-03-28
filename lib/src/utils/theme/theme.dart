import 'package:flutter/material.dart';
import 'package:veriekleme/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:veriekleme/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:veriekleme/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.yellow,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: const AppBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.yellow,
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      appBarTheme: const AppBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
