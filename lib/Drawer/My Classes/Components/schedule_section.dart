import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';

class ScheduleButton extends StatelessWidget {
  final bool isClassSelected;
  final String? selectedItem;
  final ValueChanged<String?> onDropdownChange;
  final ValueChanged<String?> onDropdownItemSelected;

  ScheduleButton({
    required this.isClassSelected,
    required this.selectedItem,
    required this.onDropdownChange,
    required this.onDropdownItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DropdownButton<String>(
              value: selectedItem,
              items: ['Transfer Credit', 'Post a Request', 'Schedule New Class']
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: onDropdownChange,
              hint: Text('Select an action'),
            ),
          ),
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              if (selectedItem != null) {
                onDropdownItemSelected(selectedItem);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.orange,
            ),
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
