

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';
import 'package:veriekleme/src/features/authentication/screens/forget_pasword/forget_password_mail/forget_password_mail.dart';
import 'package:veriekleme/src/features/authentication/screens/forget_pasword/forget_password_options/forget_password_btn_widget.dart';

class ForgetPasswordScreen {
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headline2),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              subTitle: tResetViaEMail,
              title: tEmail,
              btnIcon: Icons.mail_outline_rounded,
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              onTap: () {},
              subTitle: tResetViaPhone,
              title: tPhoneNo,
              btnIcon: Icons.mobile_friendly_rounded,
            ),
          ],
        ),
      ),
    );
  }
}