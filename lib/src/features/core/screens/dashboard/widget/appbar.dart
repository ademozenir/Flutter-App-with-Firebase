

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veriekleme/src/constants/colors.dart';
import 'package:veriekleme/src/constants/image_strings.dart';
import 'package:veriekleme/src/constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //For Dark Color
            color: tCardBgColor,
          ),
          child: IconButton(onPressed: () {}, icon: const Image(image: AssetImage(tUserProfileImage))),
        )
      ],
    );
}

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
