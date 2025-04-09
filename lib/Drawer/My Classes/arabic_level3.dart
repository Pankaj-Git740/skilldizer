import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class ArabicLevel3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          height: 500,
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
                    '3 of 3',
                    style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create your Arabic study plan',
                style: GetTextTheme.font_16_bold
                    .copyWith(color: Color(0xFF292828)),
              ),
              SizedBox(height: 10),
              Text(
                "We recommend at least : 3 hours of Classs per week\nplus self study time to make noticeable progress.",
                style: GetTextTheme.font_12_regular
                    .copyWith(color: Color(0x99292828)),
              ),
              SizedBox(height: 40),
              ContentScreen(),
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
                        // Handle button press
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

class ContentScreen extends StatefulWidget {
  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  int _hours = 3;

  void _incrementHours() {
    setState(() {
      _hours++;
    });
  }

  void _decrementHours() {
    setState(() {
      if (_hours > 0) _hours--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Card(
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey[100]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hours of classes per week\n+3h of self study',
                        style: TextStyle(
                          color: Color(0xFF292828),
                          fontSize: 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.remove,
                          size: 15,
                        ),
                        onTap: _decrementHours,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.orange),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        child: Text(
                          '$_hours',
                          style: TextStyle(fontSize: 11, color: Colors.orange),
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                        onTap: _incrementHours,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reach Proficient by C2 by',
                    style: TextStyle(
                      color: Color(0xFF292828),
                      fontSize: 8,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.circle,
                              color: AppColor.orange,
                              size: 15,
                            ),
                            Text(
                              'Mar\n2023',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0x99292828),
                                fontSize: 6,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColor.orange,
                            thickness: 2,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.circle,
                                color: AppColor.orange, size: 15),
                            Text(
                              'Jun\n2023',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0x99292828),
                                fontSize: 6,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              'Aug\n2023',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0x99292828),
                                fontSize: 6,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
