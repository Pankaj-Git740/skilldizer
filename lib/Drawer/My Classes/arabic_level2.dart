import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Drawer/My%20Classes/arabic_level3.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class ArabicLevel2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          height: 450,
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
                    '2 of 3',
                    style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'What language level do you want to\nreach ?',
                style: GetTextTheme.font_16_bold
                    .copyWith(color: Color(0xFF292828)),
              ),
              SizedBox(height: 10),
              Text(
                "We recommend aiming one level up for now. Short-term\ngoals will help you feel progress and stay motivated.",
                style: GetTextTheme.font_12_regular
                    .copyWith(color: Color(0x99292828)),
              ),
              SizedBox(height: 40),
              LevelSelectionWidget(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange[100],
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text('Previous',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 14, color: AppColor.white)),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.orange,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        NavigationUtils.navigateTo(
                            context, ArabicLevel3Screen());
                      },
                      child: Text('Next',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 14, color: AppColor.white)),
                    ),
                  ),
                ],
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
    final selectedIndex = 5;

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
          alignment: Alignment.centerRight,
          child: Text(
            'This is your\ncurrent level',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xCC292828),
              fontSize: 6.84,
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
