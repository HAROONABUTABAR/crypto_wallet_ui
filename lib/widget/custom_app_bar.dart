import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.white,
      centerTitle: false,
      toolbarHeight: 90,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Haroon",
                style: TextStyle(
                  color: ColorsManager.pink,
                  fontSize: 24,
                ),
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  color: ColorsManager.black,
                  fontSize: 32,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsManager.lightGrey,
            ),
            child: Image.asset("assets/icon_notifications.png"),
          ),
        ],
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
