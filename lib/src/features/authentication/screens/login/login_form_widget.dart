import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';
import 'package:veriekleme/src/features/authentication/screens/forget_pasword/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:veriekleme/src/features/core/screens/dashboard/dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(tForgetPassword),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(tLogin.toUpperCase())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
