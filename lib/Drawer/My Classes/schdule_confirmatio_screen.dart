import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Drawer/My%20Classes/Components/bottom_sheet_content.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class ScheduleConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              color: AppColor.white,
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(
                      "Your Class with Safwan R. has been\nsuccessfully scheduled"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildIconWith2Text(AppIcon.tchr),
                          SizedBox(height: 10),
                          _buildIconWith1Text(AppIcon.clock),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(AppImage.brooklyn),
                        radius: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      child: Column(
                    children: [
                      _buildClassInfo(),
                    ],
                  )),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Center(
                    child: NaviButton(
                      text: "Continue",
                      textColor: AppColor.white,
                      backgroundColor: AppColor.orange,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) => BottomSheetContent(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Text(text,
        style: GetTextTheme.font_14_regular.copyWith(color: AppColor.blck));
  }

  Widget _buildIconWith2Text(String icon) {
    return Row(
      children: [
        Image.asset(icon, color: Colors.grey),
        SizedBox(width: 8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Teaches:',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.800000011920929),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ' Arabic  ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildIconWith1Text(String icon) {
    return Row(
      children: [
        Image.asset(
          icon,
          color: Colors.grey,
          scale: 1.3,
        ),
        SizedBox(width: 8),
        Text(
          'Fr, 17 Feb, 17:00 (GMT+02:00)',
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 12,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            height: 0.09,
            letterSpacing: 0.07,
          ),
        )
      ],
    );
  }

  Widget _buildClassInfo() {
    return Text("Take your Class online",
        style: GetTextTheme.font_12_regular.copyWith(
          color: Color(0xFF384047),
          fontFamily: 'DM Sans',
        ));
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      color: AppColor.white,
      child: Column(
        children: [
          Image.asset(AppIcon.security),
          SizedBox(height: 10),
          SizedBox(
            width: 308,
            child: Text(
                "We guarantee that your Class will take place. If they don't, we'll give you a refund or a free replacement with a new tutor. Remember, do not make payments outside of Skilldizer. Skilldizer cannot guarantee Class brought outside platform.",
                textAlign: TextAlign.left,
                style: GetTextTheme.font_12_regular.copyWith(
                  color: Color(0xFF384047),
                  fontFamily: 'DM Sans',
                )),
          ),
        ],
      ),
    );
  }
}
