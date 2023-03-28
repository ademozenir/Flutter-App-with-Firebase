
import 'package:flutter/material.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 25.0,
            ),
            onPressed: () {},
            label: Text(tSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
            text: tDontHaveAnAccount,
            style: Theme.of(context).textTheme.bodyText1,
            children: const [
              TextSpan(
                text: tSignup,
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
