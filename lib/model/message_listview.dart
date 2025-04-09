import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/Drawer/Message/brook_chat.dart';
import 'package:skilldizer/Drawer/Message/chat_open.dart';

class MessageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messages = [
      MessageModel(
        name: "Jane Cooper",
        message: "Okay let’s start the class...",
        time: "06:34 PM",
        avatar: AppImage.jane,
        isOnline: true,
        onTap: () {
          NavigationUtils.navigateTo(context, ChatOpen());
        },
      ),
      MessageModel(
        name: "Wade Warren",
        message: "Okay let’s start the class...",
        time: "06:45 PM",
        avatar: AppImage.wade,
        isOnline: true,
        onTap: () {
          // Navigate to chat or perform any action
        },
      ),
      MessageModel(
        name: "Esther Howard",
        message: "Okay let’s start the class...",
        time: "07:04 PM",
        avatar: AppImage.esther,
        isOnline: false,
        onTap: () {},
      ),
      MessageModel(
        name: "Cameron Williamson",
        message: "Okay let’s start the class...",
        time: "08:34 AM",
        avatar: AppImage.cameron,
        isOnline: true,
        onTap: () {},
      ),
      MessageModel(
        name: "Brooklyn Simmons",
        message: "Okay let’s start the class...",
        time: "05:55 PM",
        avatar: AppImage.brooklyn,
        isOnline: true,
        onTap: () {
          NavigationUtils.navigateTo(context, BrookChat());
        },
      ),
      MessageModel(
        name: "Leslie Alexander",
        message: "Okay let’s start the class...",
        time: "12:34 PM",
        avatar: AppImage.leslie,
        isOnline: false,
        onTap: () {},
      ),
      MessageModel(
        name: "Guy Hawkins",
        message: "Okay let’s start the class...",
        time: "03:39 PM",
        avatar: AppImage.guy,
        isOnline: true,
        onTap: () {},
      ),
      MessageModel(
        name: "Robert Fox",
        message: "Okay let’s start the class...",
        time: "04:55 PM",
        avatar: AppImage.robert,
        isOnline: false,
        onTap: () {},
      ),
    ];

    return Container(
      color: AppColor.white,
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(message.avatar),
                    ),
                    message.isOnline
                        ? Image.asset(AppIcon.activeIcon, scale: 0.6)
                        : Image.asset(AppIcon.inactiveIcon, scale: 0.6),
                  ],
                ),
                SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: message.onTap,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.name,
                          style: GetTextTheme.font_16_bold
                              .copyWith(color: AppColor.blck),
                        ),
                        Text(
                          message.message,
                          style: GetTextTheme.font_12_regular
                              .copyWith(color: AppColor.grey_shade),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  message.time,
                  style: GetTextTheme.font_14_medium
                      .copyWith(color: AppColor.grey_shade),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MessageModel {
  final VoidCallback onTap;
  final String name;
  final String message;
  final String time;
  final String avatar;
  final bool isOnline;

  MessageModel({
    required this.onTap,
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    required this.isOnline,
  });
}
