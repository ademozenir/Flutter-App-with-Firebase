
import 'package:flutter/material.dart';
import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/sizes.dart';

class TElevetedButtonTheme {
  TElevetedButtonTheme._();

static final lightElevetedButtonTheme = ElevatedButtonThemeData(
  style: OutlinedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);


static final darkElevetedButtonTheme =  ElevatedButtonThemeData(
  style: OutlinedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(),
    foregroundColor: tSecondaryColor,
    backgroundColor: tWhiteColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);

}