import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Drawer/My%20Classes/arabic_level2.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class ArabicLevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          height: 400,
          padding: EdgeInsets.all(20),
          color: AppColor.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 214, 178),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '1 of 3',
                    style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'This will only take 1 minute',
                  style: TextStyle(
                    color: Color(0x99292828),
                    fontSize: 8,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'What is your Current Arabic level?',
                style: GetTextTheme.font_16_bold
                    .copyWith(color: Color(0xFF292828)),
              ),
              SizedBox(height: 10),
              Text(
                'Choose the option that most accurately describes you',
                style: GetTextTheme.font_12_regular
                    .copyWith(color: Color(0x99292828)),
              ),
              SizedBox(height: 40),
              LevelSelectionWidget(),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.orange,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    NavigationUtils.navigateTo(context, ArabicLevel2Screen());
                  },
                  child: Text('Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: AppColor.white)),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class LevelSelectionWidget extends StatelessWidget {
  const LevelSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levels = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];
    final selectedIndex = 0;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(levels.length, (index) {
            bool isSelected = index == selectedIndex;
            bool showLine = index < levels.length - 1;
            return levelIndicator(levels[index], isSelected, showLine);
          }),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'I have studied little\nto no Arabic',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xCC292828),
              fontSize: 8,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }

  Widget levelIndicator(String level, bool isSelected, bool showLine) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: ShapeDecoration(
                color: isSelected ? AppColor.orange : Colors.grey[300],
                shape: OvalBorder(),
              ),
              child: Icon(
                Icons.circle,
                color: Colors.white,
                size: 5,
              ),
            ),
            Visibility(
              visible: showLine,
              child: Container(
                height: 2,
                width: 50,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          level,
          style: isSelected
              ? GetTextTheme.font_12_regular.copyWith(color: AppColor.orange)
              : GetTextTheme.font_12_regular.copyWith(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
