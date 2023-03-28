import 'dart:ui';

import 'package:veriekleme/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;
  final String counterText;
  final Color bgColor;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.counterText,
    required this.bgColor,
  });
}
