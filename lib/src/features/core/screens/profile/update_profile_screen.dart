import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/constants/sizes.dart';
import 'package:veriekleme/src/constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back,
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(tEditProfile, style: Theme.of(context).textTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image(
                      image: AssetImage(tProfileImage),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.withOpacity(0.1)),
                      child: const Icon(LineAwesomeIcons.camera,
                          size: 20.0, color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(tFullName),
                          prefixIcon: Icon(Icons.person_outline_rounded)),
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(tEmail),
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(tPhoneNo),
                          prefixIcon: Icon(Icons.numbers)),
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(tPassword),
                          prefixIcon: Icon(Icons.fingerprint)),
                    ),
                    const SizedBox(height: tFormHeight),
                    SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: Text(
                            tEditProfile,
                            style: TextStyle(color: tDarkColor),
                          )),
                    ),
                    const SizedBox(height: tFormHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: tJoined,
                            style: TextStyle(fontSize: 13),
                            children: [
                              TextSpan(text: tJoinedAt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13))
                            ]
                          )
                        ),
                        ElevatedButton(onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              side: BorderSide.none
                            ),
                            child: Text(tDelete))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
