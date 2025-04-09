import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class SaveList extends StatelessWidget {
  const SaveList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: const Color.fromARGB(255, 254, 246, 241),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImage.saveImage),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Save tutors using",
                  style: GetTextTheme.font_24_regular
                      .copyWith(color: Colors.black),
                ),
                SizedBox(width: 10),
                Image.asset(AppIcon.saveIcon),
                SizedBox(width: 10),
                Text(
                  "icon",
                  style: GetTextTheme.font_24_regular
                      .copyWith(color: Colors.black),
                )
              ],
            ),
            Text(
              "Browse and save tutors on the 'Find tutors' page.\n         View your saved tutors here anytime.",
              style: GetTextTheme.font_14_regular.copyWith(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontFamily: 'DM Sans',
                letterSpacing: 0.05,
              ),
            )
          ],
        ),
      ),
    );
  }
}
