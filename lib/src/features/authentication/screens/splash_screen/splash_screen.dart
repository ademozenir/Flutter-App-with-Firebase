import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:veriekleme/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';
import 'package:veriekleme/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: const Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftBefore: -80,
                leftAfter: tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: const Image(
              image: AssetImage(tSplashImage),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
                bottomAfter: 60,
                bottomBefore: 0,
                rightAfter: tDefaultSize,
                rightBefore: tDefaultSize),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TFadeinAnimation extends StatelessWidget {
  const TFadeinAnimation({
    Key? key,
    required this.splashController,
  }) : super(key: key);

  final FadeInAnimationController splashController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: const Duration(milliseconds: 1600),
        top: splashController.animate.value ? -30 : -50,
        left: splashController.animate.value ? -30 : -50,
        child: const Image(image: AssetImage(tSplashTopIcon)),
      ),
    );
  }
}


// Future startAnimation() async {
//   await Future.delayed((const Duration(microseconds: 700)));
//
//   // setState(() => animate = true);
//   await Future.delayed((const Duration(microseconds: 700)));
// // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcame));
// }
