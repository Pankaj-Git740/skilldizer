import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: GetTextTheme.font_20_bold,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      AppIcon.close,
                      color: AppColor.grey_shade,
                      scale: 0.75,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  _buildDateSection("Today"),
                  _buildNotificationItem(AppIcon.book, AppColor.orange,
                      "You have a new class this upcoming Sunday", "06:34 PM"),
                  _buildNotificationItem(AppIcon.check, Colors.green,
                      "Payment made successfully!!!", "06:34 PM"),
                  _buildDateSection("Feb 15, 2023"),
                  _buildNotificationItem(AppIcon.book, AppColor.orange,
                      "You have a new class this upcoming Sunday", "06:34 PM"),
                  _buildNotificationItem(AppIcon.check, Colors.green,
                      "Payment made successfully!!!", "06:34 PM"),
                  _buildNotificationItem(AppIcon.book, AppColor.orange,
                      "You have a new class this upcoming Sunday", "06:34 PM"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateSection(String date) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        date,
        style: GetTextTheme.font_15_medium.copyWith(color: AppColor.grey_shade),
      ),
    );
  }

  Widget _buildNotificationItem(
      String icon, Color iconColor, String message, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor,
        child: Image.asset(icon, color: AppColor.white),
      ),
      title: Text(message, style: GetTextTheme.font_14_regular),
      trailing: Text(time,
          style:
              GetTextTheme.font_12_medium.copyWith(color: AppColor.grey_shade)),
    );
  }
}
