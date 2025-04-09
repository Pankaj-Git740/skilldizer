import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class BrookChat extends StatelessWidget {
  const BrookChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.orangy,
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Adjust padding as needed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10), // Add padding
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(
                          side: BorderSide(color: AppColor.orange),
                        ),
                      ),
                      child: Image.asset(AppIcon.msg),
                    ),
                    const SizedBox(height: 10), // Increased spacing
                    Text(
                      "Tell this tutor about your goals",
                      style: GetTextTheme.font_14_regular.copyWith(
                        color: AppColor.blck,
                      ),
                      textAlign: TextAlign.center, // Center align text
                    ),
                    const SizedBox(height: 5), // Increased spacing
                    Text(
                      "For your security, don't send contact\ninformation before first class payment.",
                      style: GetTextTheme.font_14_regular.copyWith(
                        color: AppColor.grey,
                      ),
                      textAlign: TextAlign.center, // Center align text
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildMessageInput()
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(color: AppColor.blck.withOpacity(0.03)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(AppIcon.back),
          ),
          const SizedBox(width: 20),
          Image.asset(AppImage.safwan),
          const SizedBox(width: 10),
          Text(
            "Brooklyn Simmons",
            style: GetTextTheme.font_14_bold.copyWith(color: AppColor.blck),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset(AppIcon.orangeClip),
          hintText: 'Your Message',
          hintStyle:
              GetTextTheme.font_14_regular.copyWith(color: AppColor.lightGrey),
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          suffixIcon: Image.asset(AppIcon.mike),
        ),
      ),
    );
  }
}
