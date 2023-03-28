// import 'package:flutter/material.dart';
// import 'package:veriekleme/src/constants/sizes.dart';
// import 'package:veriekleme/src/constants/text_strings.dart';
// import 'widget/appbar.dart';
// import 'widget/banners.dart';
// import 'widget/catagories.dart';
// import 'widget/search.dart';
// import 'widget/top_courses.dart';
//
// class Dashboard extends StatelessWidget {
//   const Dashboard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final txtTheme = Theme.of(context).textTheme;
//
//     return Scaffold(
//       appBar: const DashboardAppBar(),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(tDashboardCardPadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//             //   //-- Heading --
//             //   Text(tDashboardTitle, style: txtTheme.bodyText2),
//             //   Text(tDashboardHeading, style: txtTheme.headline2),
//             //   const SizedBox(height: tDashboardPadding),
//             // //
//             //   //-- Search Box --
//             //   DashboardSearchBox(txtTheme: txtTheme),
//             //   const SizedBox(height: tDashboardPadding),
//             //
//             //   //-- Catogories--
//             //   DashboardCategories(txtTheme: txtTheme),
//             //   const SizedBox(height: tDashboardPadding),
//             //
//             //   //-- Banners
//             //   DashboardBanners(txtTheme: txtTheme),
//             //   const SizedBox(height: tDashboardPadding),
//             //
//             // //-- Top Course
//             //   Text(tDashboardTopCourses, style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
//             //   DashboardTopCourses(txtTheme: txtTheme),
//             //   const SizedBox(height: tDashboardPadding),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:veriekleme/src/features/core/screens/profile/profile_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard Screen",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //For Dark Color
              color: tCardBgColor,
            ),
            child: IconButton(onPressed: () {
              Get.to(() => const ProfileScreen());
            }, icon: const Image(image: AssetImage(tUserProfileImage))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(
                    "Successfully Loggin",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
