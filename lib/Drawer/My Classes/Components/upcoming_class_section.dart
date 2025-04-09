import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class UpcomingClassSection extends StatelessWidget {
  final bool isUpcomingClass;
  final ValueChanged<bool> onToggle;
  final List<String> tags;
  final List<String> selectedTags;

  UpcomingClassSection({
    required this.isUpcomingClass,
    required this.onToggle,
    required this.tags,
    required this.selectedTags,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isUpcomingClass) ...[
          _buildUpcomingClassList(),
        ],
        if (!isUpcomingClass) ...[
          _buildTagsList(),
        ],
      ],
    );
  }

  Widget _buildUpcomingClassList() {
    return Column(
      children: [
        Text('Upcoming Classes', style: GetTextTheme.font_18_bold),
      ],
    );
  }

  Widget _buildTagsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tags', style: GetTextTheme.font_18_bold),
        ...tags.map((tag) => _buildTagItem(tag)).toList(),
      ],
    );
  }

  Widget _buildTagItem(String tag) {
    final isSelected = selectedTags.contains(tag);
    return GestureDetector(
      onTap: () {
        if (isSelected) {
          selectedTags.remove(tag);
        } else {
          selectedTags.add(tag);
        }
        // Update the UI by calling setState or other methods
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.orange : AppColor.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColor.orange),
        ),
        child: Center(
          child: Text(tag,
              style: GetTextTheme.font_12_regular.copyWith(
                  color: isSelected ? Colors.white : AppColor.orange)),
        ),
      ),
    );
  }
}
