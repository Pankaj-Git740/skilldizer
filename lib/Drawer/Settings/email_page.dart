import 'package:flutter/material.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text('Email',
              style: GetTextTheme.font_16_regular.copyWith(
                color: Colors.black,
                fontFamily: 'DM Sans',
                height: 0.07,
                letterSpacing: 0.10,
              )),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter your Email Address",
                style: GetTextTheme.font_16_regular.copyWith(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  height: 0.07,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 320,
                height: 35,
                padding: const EdgeInsets.only(left: 19, right: 90),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    '@ For eg :xyz123@gmail.com',
                    style: GetTextTheme.font_14_regular.copyWith(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'DM Sans',
                      height: 0.15,
                      letterSpacing: 0.16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
              NaviButton(
                  text: "Saving Settings",
                  textColor: AppColor.white,
                  backgroundColor: AppColor.orange,
                  onPressed: () {})
            ],
          ),
        ),
      ]),
    );
  }
}
