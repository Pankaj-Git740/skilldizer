import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class ContentSection extends StatelessWidget {
  final bool isClassSelected;
  final bool isUpcomingClass;
  final ValueChanged<bool> onUpcomingClassToggle;
  final List<String> classTags;
  final List<String> selectedClassTags;
  final List<String> tutorTags;
  final List<String> selectedTutorTags;
  final VoidCallback onShowBottomSheet;

  ContentSection({
    required this.isClassSelected,
    required this.isUpcomingClass,
    required this.onUpcomingClassToggle,
    required this.classTags,
    required this.selectedClassTags,
    required this.tutorTags,
    required this.selectedTutorTags,
    required this.onShowBottomSheet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isClassSelected) ...[
            _buildClassContent(),
            _buildToggleUpcomingClassSwitch(),
          ] else ...[
            _buildTutorContent(),
          ],
          SizedBox(height: 20),
          GestureDetector(
            onTap: onShowBottomSheet,
            child: Container(
              height: 50,
              color: AppColor.orange,
              child: Center(
                child: Text(
                  "Leave Feedback",
                  style:
                      GetTextTheme.font_16_bold.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Class Content",
          style: GetTextTheme.font_18_bold,
        ),
        SizedBox(height: 10),
        Text(
          "Review your class.",
          style: GetTextTheme.font_14_regular,
        ),
        SizedBox(height: 10),
        _buildTags(classTags, selectedClassTags),
      ],
    );
  }

  Widget _buildTutorContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tutor Content",
          style: GetTextTheme.font_18_bold,
        ),
        SizedBox(height: 10),
        Text(
          "Review your tutor.",
          style: GetTextTheme.font_14_regular,
        ),
        SizedBox(height: 10),
        _buildTags(tutorTags, selectedTutorTags),
      ],
    );
  }

  Widget _buildTags(List<String> tags, List<String> selectedTags) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: tags.map((tag) {
        final isSelected = selectedTags.contains(tag);
        return FilterChip(
          label: Text(tag),
          selected: isSelected,
          onSelected: (selected) {
            // Logic to handle chip selection
            if (isSelected) {
              selectedTags.remove(tag);
            } else {
              selectedTags.add(tag);
            }
          },
          selectedColor: AppColor.orange,
          backgroundColor: AppColor.orange,
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
          side: BorderSide(
            color: AppColor.orange,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildToggleUpcomingClassSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Upcoming Classes",
          style: GetTextTheme.font_14_bold,
        ),
        Switch(
          value: isUpcomingClass,
          onChanged: onUpcomingClassToggle,
        ),
      ],
    );
  }
}
