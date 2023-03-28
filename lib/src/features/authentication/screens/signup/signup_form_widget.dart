import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';
import 'package:veriekleme/src/features/authentication/controllers/signup_controller.dart';
import 'package:veriekleme/src/features/authentication/models/user_model.dart';
import 'package:veriekleme/src/features/authentication/screens/forget_pasword/forget_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();


    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(label: Text(tFullName), prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(label: Text(tPhoneNo), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(label: Text(tPassword), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    // *****************  Email & Password Authentication  ********
                    // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                    // ****************  For Phone Authentication ***************
                    // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                    // *********** ortak sayfa geçişi ************
                    // Get.to(() => const OTPScreen());

// -----------------------------------------------------------------------------------------

                    // ******* Get User and Pass it to Controller ********
                    final user = UserModel(
                      email: controller.email.text.trim(),
                      password: controller.password.text.trim(),
                      fullName: controller.fullName.text.trim(),
                      phoneNo: controller.phoneNo.text.trim(),
                    );
                    SignUpController.instance.createUser(user);
                  // ********** ortak sayfa geçişini createuser() metoduna taşıdık *******
                    // Get.to(() => const OTPScreen());
                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}