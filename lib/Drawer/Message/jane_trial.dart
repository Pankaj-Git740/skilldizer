import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class JaneTrail extends StatelessWidget {
  const JaneTrail({super.key});

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
            Expanded(child: _buildbody()),
          ]),
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
          Text(
            "Chat",
            style:
                GetTextTheme.font_16_medium.copyWith(color: AppColor.darkGrey),
          ),
        ],
      ),
    );
  }

  Widget _buildbody() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(color: AppColor.white),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(AppImage.prof),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Jane Cooper",
                      style: GetTextTheme.font_12_medium
                          .copyWith(color: AppColor.blck, fontFamily: 'Inter'),
                    ),
                    Image.asset(AppIcon.link)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcon.fillStar),
                    SizedBox(width: 3),
                    Image.asset(AppIcon.fillStar),
                    SizedBox(width: 3),
                    Image.asset(AppIcon.fillStar),
                    SizedBox(width: 3),
                    Image.asset(AppIcon.fillStar),
                    SizedBox(width: 3),
                    Image.asset(AppIcon.greyStar),
                    SizedBox(width: 3),
                    Text(
                      "(34)",
                      style: GetTextTheme.font_12_medium
                          .copyWith(color: AppColor.blck, fontFamily: 'Inter'),
                    ),
                  ],
                ),
                Text(
                  "\$3.00/hr",
                  style:
                      GetTextTheme.font_14_bold.copyWith(color: AppColor.blck),
                )
              ],
            ),
            _buildListTile("1", "Select time",
                "Choose a suitable data and time for\nyour first class"),
            _buildDetailTile("2", "Make a payment"),
            _buildListTile("3", "Join class in the preply classroom",
                "Meet your tutor for a video call in our virtual classroom "),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            NaviButton(
                text: 'Book trail Class',
                textColor: AppColor.white,
                backgroundColor: AppColor.orange,
                onPressed: () {}),
            SizedBox(height: 10),
            NaviButton(
                text: 'Archive Tutor',
                textColor: AppColor.orange,
                backgroundColor: AppColor.white,
                onPressed: () {}),
          ],
        ));
  }

  Widget _buildListTile(String icon, String label, String Subtitle) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.top,
      leading: Container(
          height: 40,
          width: 40,
          decoration:
              ShapeDecoration(color: AppColor.orange, shape: OvalBorder()),
          child: Center(
            child: Text(
              icon,
              style:
                  GetTextTheme.font_14_medium.copyWith(color: AppColor.white),
            ),
          )),
      title: Text(
        label,
        style: GetTextTheme.font_14_medium.copyWith(color: AppColor.blck),
      ),
      subtitle: Text(
        Subtitle,
        style: GetTextTheme.font_13_regular.copyWith(color: AppColor.grey),
      ),
    );
  }

  Widget _buildDetailTile(String icon, String label) {
    return ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        leading: Container(
          height: 40,
          width: 40,
          decoration:
              ShapeDecoration(color: AppColor.orange, shape: OvalBorder()),
          child: Center(
            child: Text(
              icon,
              style:
                  GetTextTheme.font_14_medium.copyWith(color: AppColor.white),
            ),
          ),
        ),
        title: Text(
          label,
          style: GetTextTheme.font_14_medium.copyWith(color: AppColor.blck),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Make a secure online payment by\nPayPal or Visa/Mastercard",
              style:
                  GetTextTheme.font_13_regular.copyWith(color: AppColor.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset(AppIcon.paypal),
                SizedBox(width: 10),
                Image.asset(AppIcon.visa),
                SizedBox(width: 10),
                Image.asset(AppIcon.master),
              ],
            )
          ],
        ));
  }
}
