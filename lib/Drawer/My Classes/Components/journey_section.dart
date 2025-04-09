import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class JourneySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColor.white,
      height: 370,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Start your Journey Now', style: GetTextTheme.font_18_bold),
          const SizedBox(height: 20),
          _buildJourneyStep(
              stepNumber: 1,
              isCompleted: true,
              title: 'Share your goal with tutor (2 Min)'),
          _buildJourneyStep(
              stepNumber: 2,
              isCompleted: false,
              isActive: true,
              title: 'Take your trial class!',
              subtitle:
                  'Meet your tutor and decide whether it\'s a good match'),
          _buildJourneyStep(
              stepNumber: 3,
              isCompleted: false,
              title: 'Continue learning with Safran or try another tutor',
              subtitle:
                  'If you like your tutor, buy hours to plan more classes.'),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildJourneyStep(
      {required int stepNumber,
      required bool isCompleted,
      required String title,
      String? subtitle,
      bool isActive = false}) {
    Color circleColor;
    Widget centerWidget;

    if (isCompleted) {
      circleColor = Colors.green;
      centerWidget = const Icon(Icons.check, color: Colors.white);
    } else if (isActive) {
      circleColor = AppColor.orange;
      centerWidget = Text(stepNumber.toString(),
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold));
    } else {
      circleColor = AppColor.orange.withOpacity(0.5);
      centerWidget = Text(stepNumber.toString(),
          style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.bold));
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: circleColor,
                  child: centerWidget),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: GetTextTheme.font_14_bold),
                    if (subtitle != null) ...[
                      const SizedBox(height: 5),
                      Text(subtitle,
                          style: GetTextTheme.font_12_regular
                              .copyWith(color: Colors.black.withOpacity(0.5))),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        if (stepNumber < 3) const Divider(thickness: 2),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Share Goal'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Take Trial Class'),
        ),
      ],
    );
  }
}
