import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Drawer/Settings/save_list.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage> {
  bool _showEducation = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 170,
                color: AppColor.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: ShapeDecoration(
                          shape: OvalBorder(
                              side: BorderSide(
                                  width: 4, color: AppColor.orange))),
                      child: Image.asset(
                        AppImage.safwan,
                        scale: 0.3,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Safwan R.',
                                  style: GetTextTheme.font_16_regular.copyWith(
                                    color: Colors.black,
                                    fontFamily: 'DM Sans',
                                    height: 0.07,
                                    letterSpacing: 0.10,
                                  )),
                              SizedBox(width: 5),
                              Image.asset(AppIcon.profileIcon),
                              SizedBox(width: 5),
                              Image.asset(AppIcon.verifiedIcon)
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Experienced native Arabic tutor',
                              style: GetTextTheme.font_14_regular.copyWith(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontFamily: 'DM Sans',
                                height: 0.09,
                                letterSpacing: 0.10,
                              )),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Image.asset(AppIcon.tchr),
                              SizedBox(width: 10),
                              Text('Teaches:',
                                  style: GetTextTheme.font_12_bold.copyWith(
                                    color: Colors.black
                                        .withOpacity(0.800000011920929),
                                    fontFamily: 'DM Sans',
                                    height: 0.12,
                                    letterSpacing: 0.10,
                                  )),
                              Text(
                                'Arabic',
                                style: GetTextTheme.font_12_regular.copyWith(
                                  color: Colors.black.withOpacity(0.5),
                                  fontFamily: 'DM Sans',
                                  height: 0.12,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(AppIcon.speak),
                              SizedBox(width: 10),
                              Text('Speaks: ',
                                  style: GetTextTheme.font_12_bold.copyWith(
                                    color: Colors.black
                                        .withOpacity(0.800000011920929),
                                    fontFamily: 'DM Sans',
                                    height: 0.12,
                                    letterSpacing: 0.10,
                                  )),
                              Text(
                                'English, Arabic & French',
                                style: GetTextTheme.font_12_regular.copyWith(
                                  color: Colors.black.withOpacity(0.5),
                                  fontFamily: 'DM Sans',
                                  height: 0.12,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                AppIcon.clock,
                                scale: 1.2,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '320 Class',
                                style: GetTextTheme.font_12_regular.copyWith(
                                  color: Colors.black
                                      .withOpacity(0.800000011920929),
                                  fontFamily: 'DM Sans',
                                  height: 0.12,
                                  letterSpacing: 0.10,
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

              SizedBox(height: 16),

              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 570,
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Section
                    Image.asset(
                      AppImage.center_Profile,
                      scale: 0.1,
                    ),
                    SizedBox(height: 16),

                    // Newly Joined and Price Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 207, 242, 209),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                              child: Text(
                            "Newly joined",
                            style: GetTextTheme.font_14_xtraRegular.copyWith(
                              color: Color(0xFF16940B),
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.07,
                            ),
                          )),
                        ),
                        Column(
                          children: [
                            Text('\$48',
                                style: GetTextTheme.font_16_regular.copyWith(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  letterSpacing: 0.08,
                                )),
                            Text('1 hour class',
                                style: GetTextTheme.font_14_regular.copyWith(
                                  color: Colors.black.withOpacity(0.5),
                                  fontFamily: 'DM Sans',
                                  letterSpacing: 0.08,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Action Buttons
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.orange,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Center(child: Text('Book Class')),
                    ),
                    SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColor.orange),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Send Messages',
                          style: TextStyle(color: AppColor.orange),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {
                        NavigationUtils.navigateTo(context, SaveList());
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColor.orange),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Save To My List',
                          style: TextStyle(color: AppColor.orange),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Average Response Time
                    Text(
                      'Average Response Time : 4hrs',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // About the Tutor Section

              Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 260,
                  color: AppColor.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the Tutor',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Welcome to my profile, my name is Safwan, from Jordan, and I live in Virginia. I have been working as an Arabic tutor and a translator since 4 years, I can teach you Modern Standard Arabic (MSA) and spoken Jordanian/Palestinian dialect!!! I hold a Bachelor\'s degree in Translation from English-Arabic and vice versa, join my classes to learn so many things!!!',
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to detailed description or show more
                        },
                        child: Text(
                          'Show more',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  )),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 420,
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Schedule',
                      style: GetTextTheme.font_16_regular.copyWith(
                        color: Color(0xFF090F19),
                        fontFamily: 'DM Sans',
                        height: 0.06,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      color: Colors.grey[200],
                      width: double.infinity,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset(AppIcon.help),
                          SizedBox(width: 10),
                          Text(
                            'Choose the time for your first class. The timings\nare displayed in your local timezone.',
                            style: GetTextTheme.font_12_xtraRegular.copyWith(
                              color: Color(0xFF3C4447),
                              fontFamily: 'DM Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Date Selector
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                              color: Colors.grey, size: 15),
                          onPressed: () {
                            // Logic to navigate to previous week
                          },
                        ),
                        Text('March 06, 2023',
                            style: GetTextTheme.font_10_regular.copyWith(
                              color: Color(0xFF384047),
                              fontSize: 10.98,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            )),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey, size: 15),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 170,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Text(
                              "Thu",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "06",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                          Column(children: [
                            Text(
                              "Fri",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "07",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            _buildTimeContainer("9:00 PM"),
                            _buildTimeContainer("18:00 PM"),
                            _buildTimeContainer("18:30 PM"),
                            _buildTimeContainer("19:00 PM"),
                          ]),
                          Column(children: [
                            Text(
                              "Sat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "08",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            _buildTimeContainer("9:00 PM"),
                            _buildTimeContainer("18:00 PM"),
                            _buildTimeContainer("18:30 PM"),
                            _buildTimeContainer("19:00 PM"),
                          ]),
                          Column(children: [
                            Text(
                              "Sun",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "09",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                          Column(children: [
                            Text(
                              "Mon",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                          Column(children: [
                            Text(
                              "Tue",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "11",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            _buildTimeContainer("9:00 PM"),
                            _buildTimeContainer("18:00 PM"),
                            _buildTimeContainer("18:30 PM"),
                            _buildTimeContainer("19:00 PM"),
                          ]),
                          Column(children: [
                            Text(
                              "Wed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6.76,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "12",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.01,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            _buildTimeContainer("9:00 PM"),
                            _buildTimeContainer("18:00 PM"),
                            _buildTimeContainer("18:30 PM"),
                            _buildTimeContainer("19:00 PM"),
                          ]),
                        ],
                      ),
                    ),
                    Center(
                      child: NaviButton(
                          text: "View Full Schedule",
                          textColor: AppColor.white,
                          backgroundColor: AppColor.orange,
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 180,
                color: AppColor.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Resume",
                            style: GetTextTheme.font_16_regular.copyWith(
                              color: Color(0xFF090F19),
                              fontFamily: 'DM Sans',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showEducation = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text('Education',
                                    style:
                                        GetTextTheme.font_12_regular.copyWith(
                                      color: Color(0xFF090F19),
                                      fontFamily: 'DM Sans',
                                    )),
                                SizedBox(height: 2),
                                _showEducation
                                    ? Container(
                                        height: 1.5,
                                        width: 55,
                                        color: AppColor.orange,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showEducation = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text('Certification',
                                    style:
                                        GetTextTheme.font_12_regular.copyWith(
                                      color: Color(0xFF090F19),
                                      fontFamily: 'DM Sans',
                                    )),
                                SizedBox(height: 2),
                                _showEducation == false
                                    ? Container(
                                        height: 1.5,
                                        width: 70,
                                        color: AppColor.orange,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2012 - 2016",
                            style: GetTextTheme.font_14_xtraRegular.copyWith(
                                color: Color(0x7F090F19),
                                fontFamily: "DM Sans"),
                          ),
                          _showEducation
                              ? _buildEducationContent()
                              : _buildDiplomaContent(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
// Student Reviews ######################
              Container(
                width: double.infinity,
                height: 550,
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Student Review",
                        style: GetTextTheme.font_16_regular.copyWith(
                            color: Color(0xFF090F19), fontFamily: "DM Sans"),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("1 Review",
                                  style: GetTextTheme.font_18_bold.copyWith(
                                      color: Color(0xFF090F19),
                                      fontFamily: "DM Sans")),
                              SizedBox(width: 5),
                              Image.asset(AppIcon.fillStar, scale: 1.2),
                              SizedBox(width: 3),
                              Image.asset(AppIcon.fillStar, scale: 1.2),
                              SizedBox(width: 3),
                              Image.asset(AppIcon.fillStar, scale: 1.2),
                              SizedBox(width: 3),
                              Image.asset(AppIcon.fillStar, scale: 1.2),
                              SizedBox(width: 3),
                              Image.asset(AppIcon.fillStar, scale: 1.2),
                              SizedBox(width: 5),
                              Text(
                                "5",
                                style: GetTextTheme.font_16_bold.copyWith(
                                    color: AppColor.orange,
                                    fontFamily: "DM Sans"),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          _buildStarRating("5", AppColor.orange, "1",
                              Color(0xFF090F19), Color(0xFF090F19)),
                          _buildStarRating(
                              "4",
                              const Color.fromARGB(255, 221, 220, 220),
                              "0",
                              const Color.fromARGB(255, 189, 189, 189),
                              Color.fromARGB(255, 189, 189, 189)),
                          _buildStarRating(
                              "3",
                              const Color.fromARGB(255, 221, 220, 220),
                              "0",
                              const Color.fromARGB(255, 189, 189, 189),
                              Color.fromARGB(255, 189, 189, 189)),
                          _buildStarRating(
                              "2",
                              const Color.fromARGB(255, 221, 220, 220),
                              "0",
                              const Color.fromARGB(255, 189, 189, 189),
                              Color.fromARGB(255, 189, 189, 189)),
                          _buildStarRating(
                              "1",
                              const Color.fromARGB(255, 221, 220, 220),
                              "0",
                              const Color.fromARGB(255, 189, 189, 189),
                              Color.fromARGB(255, 189, 189, 189)),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppImage.leslie,
                            scale: 0.7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Reem",
                                    style: GetTextTheme.font_16_regular
                                        .copyWith(
                                            color: Color(0xFF090F19),
                                            fontFamily: "DM Sans"),
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(AppIcon.fillStar, scale: 1.2),
                                  SizedBox(width: 5),
                                  Text(
                                    "5",
                                    style: GetTextTheme.font_16_bold.copyWith(
                                        color: AppColor.orange,
                                        fontFamily: "DM Sans"),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "March 2, 2023",
                                style: GetTextTheme.font_14_regular.copyWith(
                                  color: Color(0x7F090F19),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Safwan did a great job making the\nclasses fun and interactive. he helps \nme retain new vocabulary and grammar\nrules with lots of examples. he is the\nbest!!! and definitely highly \nrecommended!!",
                                style: GetTextTheme.font_14_regular.copyWith(
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStarRating(
      String star, Color color, String reviews, Color txtColor, Color starTxt) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            "$star Stars",
            style: GetTextTheme.font_14_regular
                .copyWith(color: starTxt, fontFamily: "DM Sanso"),
          ),
          SizedBox(width: 60),
          Container(
            height: 10,
            width: 150,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          SizedBox(width: 10),
          Text(
            "($reviews)",
            style: GetTextTheme.font_14_regular
                .copyWith(color: txtColor, fontFamily: "DM Sanso"),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Yarmouk University Bachelor',
          style: GetTextTheme.font_12_xtraRegular.copyWith(
            color: Color(0x7F090F19),
            fontFamily: 'DM Sans',
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 15),
            SizedBox(width: 8),
            Text('Diploma Verified', style: TextStyle(color: Colors.green)),
          ],
        ),
      ],
    );
  }

  Widget _buildDiplomaContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Translation certificate\nGeneral translation',
          style: GetTextTheme.font_12_xtraRegular.copyWith(
            color: Color(0x7F090F19),
            fontFamily: 'DM Sans',
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 15,
            ),
            SizedBox(width: 8),
            Text('Diploma Verified', style: TextStyle(color: Colors.green)),
          ],
        ),
      ],
    );
  }

  Widget _buildTimeContainer(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        height: 20,
        width: 45,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.grey_shade),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xFFFF5A00),
              fontSize: 6.48,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0.23,
            ),
          ),
        ),
      ),
    );
  }
}
