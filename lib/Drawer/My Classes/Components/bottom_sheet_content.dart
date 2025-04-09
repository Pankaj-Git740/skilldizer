import 'package:flutter/material.dart';
import 'package:skilldizer/Drawer/My%20Classes/arabic_level_screen.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppIcon.bigTick),
              IconButton(
                icon: Icon(
                  Icons.close,
                  size: 20,
                  color: Colors.grey,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text('Get ready for a fantastic class!',
              style:
                  GetTextTheme.font_18_regular.copyWith(color: AppColor.blck)),
          SizedBox(height: 10),
          Text('Take a few simple steps before your class to make most of it.',
              style: GetTextTheme.font_14_regular.copyWith(
                color: Color(0xFF384047),
              )),
          SizedBox(height: 20),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  NavigationUtils.navigateTo(context, ArabicLevelScreen());
                },
                child: Text(
                  'Complete Steps',
                  style: GetTextTheme.font_14_regular
                      .copyWith(color: AppColor.white),
                ),
              )),
        ],
      ),
    );
  }
}
