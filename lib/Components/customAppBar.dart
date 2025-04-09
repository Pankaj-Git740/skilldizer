import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Drawer/Message/notification_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        color: AppColor.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  AppIcon.appLogo,
                  scale: 0.3,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(AppIcon.wallet),
                SizedBox(width: 20),
                Image.asset(AppIcon.mail),
                SizedBox(width: 20),
                Image.asset(AppIcon.help),
                SizedBox(width: 20),
                Image.asset(AppIcon.bookmark),
                SizedBox(width: 20),
                GestureDetector(
                    onTap: () => NavigationUtils.navigateTo(
                        context, NotificationScreen()),
                    child: Image.asset(AppIcon.bell)),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Image.asset(AppIcon.menu),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
