import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/Drawer/Message/profile.dart';

class ChatOpen extends StatelessWidget {
  const ChatOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.orangy,
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Expanded(child: _buildChatContent(context)),
          _buildMessageInput(),
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
            "Safwan.R",
            style: GetTextTheme.font_14_bold.copyWith(color: AppColor.blck),
          ),
        ],
      ),
    );
  }

  Widget _buildChatContent(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildDateLabel('Thu, 16 Feb'),
        const SizedBox(height: 16.0),
        _buildMessageCard(context), // Pass context here
      ],
    );
  }

  Widget _buildDateLabel(String date) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: AppColor.orange,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          date,
          style: GetTextTheme.font_12_regular.copyWith(color: AppColor.white),
        ),
      ),
    );
  }

  Widget _buildMessageCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.blck.withOpacity(0.06),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skilldizer', style: _boldTextStyle(18.0)),
          const SizedBox(height: 8.0),
          const Text('Tutor rescheduled a class'),
          const SizedBox(height: 16.0),
          _buildTextRow('Previous time:', 'Saturday, Feb. 18, 20:00 - 20:50'),
          const SizedBox(height: 16.0),
          _buildTextRow('New time:', 'Wednesday, March 1, 20:00 - 20:50'),
          const SizedBox(height: 16.0),
          _buildTextRow(
            'Reason:',
            'Meet your tutor in the skilldizer virtual classroom for easy video calls on desktop or in the app!',
          ),
          const SizedBox(height: 24.0),
          _buildEnterClassroomButton(context), // Pass context here
        ],
      ),
    );
  }

  Widget _buildTextRow(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: _boldTextStyle(14.0)),
        Text(content),
      ],
    );
  }

  Widget _buildEnterClassroomButton(BuildContext context) {
    // Add context as a parameter
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 110),
          backgroundColor: AppColor.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          'Enter Classroom',
          style: GetTextTheme.font_16_medium.copyWith(color: AppColor.white),
        ),
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

  TextStyle _boldTextStyle(double fontSize) {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize);
  }
}
