
import 'package:flutter/material.dart';
import 'package:veriekleme/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: tSecondaryColor,
        floatingLabelStyle: TextStyle(color: tSecondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: tSecondaryColor),
        )
      );

  static InputDecorationTheme darkInputDecorationTheme =
  InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: tPrimaryColor),
      )
  );

}







