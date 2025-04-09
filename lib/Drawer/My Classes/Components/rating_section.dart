import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class RatingSection extends StatelessWidget {
  final String title;
  final List<String> tags;
  final List<String> selectedTags;
  final ValueSetter<StateSetter> setModalState;
  final String compli;

  RatingSection({
    required this.title,
    required this.tags,
    required this.selectedTags,
    required this.setModalState,
    required this.compli,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: GetTextTheme.font_17_regular.copyWith(color: Colors.black)),
        SizedBox(height: 10),
        _buildTags(tags, selectedTags),
        SizedBox(height: 10),
        Text(compli,
            style: GetTextTheme.font_14_regular.copyWith(color: Colors.black)),
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
            setModalState((state) {
              if (isSelected) {
                selectedTags.remove(tag);
              } else {
                selectedTags.add(tag);
              }
            });
          },
          selectedColor: AppColor.orange,
          backgroundColor: AppColor.orangy,
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
}
