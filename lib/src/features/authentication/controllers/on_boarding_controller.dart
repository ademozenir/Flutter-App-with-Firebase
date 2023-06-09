import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/constants/text_strings.dart';
import 'package:veriekleme/src/features/authentication/models/model_on_boarding.dart';
import 'package:veriekleme/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingSubTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
//------------------------------------------------------------
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingSubTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
//--------------------------------------------------------------------
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingSubTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}

// onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
