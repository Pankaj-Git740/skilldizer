import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class MediaType extends StatelessWidget {
  const MediaType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 298,
                child: Text(
                  'These are the communication tools your tutor uses. Please choose your preferred communication tool',
                  textAlign: TextAlign.center,
                  style: GetTextTheme.font_14_regular.copyWith(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontFamily: 'DM Sans',
                  ),
                ),
              ),
              Image.asset(AppIcon.close)
            ],
          )
        ],
      ),
    );
  }
}
