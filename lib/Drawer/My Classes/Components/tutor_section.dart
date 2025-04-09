import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class TutorSection extends StatelessWidget {
  final List<String> tags;
  final List<String> selectedTags;
  final VoidCallback onShowBottomSheet;

  TutorSection({
    required this.tags,
    required this.selectedTags,
    required this.onShowBottomSheet,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tutor Reviews', style: GetTextTheme.font_18_bold),
        ElevatedButton(
          onPressed: onShowBottomSheet,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.orange,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text('Add Review',
              style:
                  GetTextTheme.font_14_regular.copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
