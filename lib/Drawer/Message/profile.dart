import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/Drawer/Message/buy_hours_modal.dart';
import 'package:skilldizer/Drawer/Message/jane_trial.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            Expanded(child: _buildbody(context)),
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

  Widget _buildbody(BuildContext context) {
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
                    SizedBox(width: 5),
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
            _buildListTile(AppIcon.book, "Subject", "Arabic"),
            _buildListTile(
                AppIcon.globe, "Tutor's time", "America/New_York gmt -5:00"),
            _buildListTile(AppIcon.clock, "Pre-Paid hours", "1 Hour"),
            _buildListTile(AppIcon.mail, "Email", "tra.reemsaleh@hotmil.com"),
            _buildDetailTile(AppIcon.info, "Details"),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            NaviButton(
              text: 'Buy Hours',
              textColor: AppColor.white,
              backgroundColor: AppColor.orange,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => BuyHoursModal(),
                );
              },
            ),
            SizedBox(height: 10),
            NaviButton(
                text: 'Enter Classroom',
                textColor: AppColor.orange,
                backgroundColor: AppColor.white,
                onPressed: () =>
                    NavigationUtils.navigateTo(context, JaneTrail())),
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
      leading: Container(
          height: 45,
          width: 45,
          decoration:
              ShapeDecoration(color: Color(0xffFFD9D9D9), shape: OvalBorder()),
          child: Image.asset(icon)),
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
      leading: Container(
          height: 45,
          width: 45,
          decoration:
              ShapeDecoration(color: Color(0xffFFD9D9D9), shape: OvalBorder()),
          child: Image.asset(icon)),
      title: Text(
        label,
        style: GetTextTheme.font_14_medium.copyWith(color: AppColor.blck),
      ),
    );
  }
}
