import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class TabsSection extends StatelessWidget {
  final bool isClassSelected;
  final VoidCallback onClassTap;
  final VoidCallback onTutorTap;

  TabsSection({
    required this.isClassSelected,
    required this.onClassTap,
    required this.onTutorTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onClassTap,
              child: Container(
                color: isClassSelected ? AppColor.orange : Colors.white,
                child: Center(
                  child: Text(
                    "Class",
                    style: GetTextTheme.font_16_bold.copyWith(
                      color: isClassSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onTutorTap,
              child: Container(
                color: !isClassSelected ? AppColor.orange : Colors.white,
                child: Center(
                  child: Text(
                    "Tutor",
                    style: GetTextTheme.font_16_bold.copyWith(
                      color: !isClassSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
