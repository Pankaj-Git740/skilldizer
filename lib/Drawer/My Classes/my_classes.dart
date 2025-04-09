import 'package:flutter/material.dart';
import 'package:skilldizer/Drawer/My%20Classes/schdule_confirmatio_screen.dart';
import 'package:skilldizer/Drawer/My%20Classes/tutor_selection_model.dart';
import 'package:skilldizer/Drawer/My%20Classes/tip_screen.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class MyClassesScreen extends StatefulWidget {
  @override
  _MyClassesScreenState createState() => _MyClassesScreenState();
}

class _MyClassesScreenState extends State<MyClassesScreen>
    with SingleTickerProviderStateMixin {
  bool classTutor = true;

  String? selectedItem;

  double? selectedAmount;
  bool isCustomSelected = false;
  bool isUpcomingClass = false;

  late final List<Tutor> tutors = [
    Tutor(() {
      return NavigationUtils.navigateTo(context, ScheduleConfirmationScreen());
    },
        name: 'Safwan',
        imageUrl: AppImage.brooklyn,
        hoursAvailable: '0 hours to schedule'),
    Tutor(() {},
        name: 'Wade Warren',
        imageUrl: AppImage.wade,
        hoursAvailable: '0 hours to schedule'),
    Tutor(() {},
        name: 'Cameron Williamson',
        imageUrl: AppImage.cameron,
        hoursAvailable: '0 hours to schedule'),
  ];

  List<String> classTags = [
    "Good Material",
    "Fits my need",
    "Activities",
    "Fun",
    "Customized",
    "Effective"
  ];
  List<String> selectedClassTags = [];

  List<String> tutorTags = [
    "Professional",
    "On Time",
    "Flexible",
    "Fun",
    "Customized",
    "Effective"
  ];
  List<String> selectedTutorTags = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 246, 243),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              const SizedBox(height: 20),
              _buildJourneySection(),
              const SizedBox(height: 16),
              _buildTabsSection(),
              const SizedBox(height: 16),
              _buildContentSection(),
              const SizedBox(height: 16),
              _buildScheduleButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: double.infinity,
      color: AppColor.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("My Classes", style: GetTextTheme.font_20_bold),
          Text("...", style: GetTextTheme.font_20_bold),
        ],
      ),
    );
  }

  Widget _buildJourneySection() {
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

  Widget _buildTabsSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          _buildTabItem("Class", Icons.edit, classTutor),
          const SizedBox(width: 30),
          _buildTabItem("Tutor", null, !classTutor, isTutorTab: true),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, IconData? icon, bool isSelected,
      {bool isTutorTab = false}) {
    return GestureDetector(
      onTap: () => setState(() => classTutor = !isTutorTab),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 25,
                decoration: ShapeDecoration(
                  color: isSelected ? AppColor.orange : AppColor.grey_shade,
                  shape: CircleBorder(),
                ),
                child: icon != null
                    ? Icon(icon, color: AppColor.white, size: 13)
                    : Image.asset(AppIcon.book,
                        color: AppColor.white, scale: 1.7),
              ),
              const SizedBox(width: 7),
              Text(title, style: GetTextTheme.font_12_regular),
            ],
          ),
          const SizedBox(height: 5),
          isSelected
              ? Container(height: 1.5, width: 65, color: AppColor.orange)
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: classTutor == true ? 195 : 160,
      color: AppColor.white,
      child: classTutor ? _buildUpcomingClass() : _buildTutor(),
    );
  }

////////////////////////////////////////sechdule Sections///////////////////////////////////////////////////////////

  Widget _buildScheduleButton() {
    return Container(
      width: double.infinity,
      height: 90,
      color: AppColor.white,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) => TutorSelectionModal(tutors: tutors),
                );
                Navigator.of(context).pop;
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      color: AppColor.orange),
                  child: Row(children: [
                    Icon(Icons.add, color: AppColor.white),
                    SizedBox(width: 10),
                    Text("Schedule new class",
                        style: GetTextTheme.font_18_medium.copyWith(
                          color: AppColor.white,
                        )),
                  ])),
            ),
            SizedBox(width: 2),
            buildMenuButton(classTutor)
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton(bool isTutor) {
    return Container(
      width: 60,
      height: 56,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(9), bottomRight: Radius.circular(9)),
          color: AppColor.orange),
      child: PopupMenuButton<String>(
        padding: EdgeInsets.only(left: 0),
        icon: Icon(Icons.keyboard_arrow_down_rounded,
            size: 26, color: AppColor.white),
        onSelected: (value) {
          setState(() => selectedItem = value);
          handleMenuSelection(value);
        },
        itemBuilder: (context) =>
            isTutor ? buildClassMenuItems() : buildTutorMenuItems(),
      ),
    );
  }

  void handleMenuSelection(String value) {
    Navigator.of(context).pop();
    switch (value) {
      case 'Reschedule':
      case 'Message Tutor':
      case 'See Tutor Profile':
      case 'Cancel Class':
      case 'Leave a Tip':
      case 'Transfer Credit':
      case 'Post a Request':
      case 'Schedule New Class':
        // Handle specific cases here
        break;
    }
  }

  List<PopupMenuEntry<String>> buildTutorMenuItems() {
    return [
      buildMenuItem('Reschedule', Icons.calendar_today_outlined),
      buildMenuItem('Message Tutor', Icons.message_outlined),
      buildMenuItem('See Tutor Profile', Icons.person_outline),
      buildMenuItem('Cancel Class', Icons.close),
      buildMenuItem('Leave a Tip', Icons.attach_money),
    ];
  }

  List<PopupMenuEntry<String>> buildClassMenuItems() {
    return [
      buildMenuItem('Transfer Credit', Icons.sync_alt),
      buildMenuItem('Post a Request', Icons.info_outline),
      buildMenuItem('Schedule New Class', Icons.add),
    ];
  }

  PopupMenuItem<String> buildMenuItem(String value, IconData icon) {
    return PopupMenuItem<String>(
      value: value,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(value),
      ),
    );
  }

  /////////////////////////////////////////////////////////////JOURNEY Section///////////////////////////////////////////////////////////////

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
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: GetTextTheme.font_14_regular),
                    if (subtitle != null)
                      Text(subtitle,
                          style: GetTextTheme.font_14_regular
                              .copyWith(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        _buildActionButton('Buy Hours',
            const Color.fromARGB(255, 252, 184, 150), AppColor.orange),
        const SizedBox(width: 10),
        _buildActionButton('Share Goals', AppColor.orange, Colors.white),
      ],
    );
  }

  Widget _buildActionButton(String text, Color bgColor, Color textColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: bgColor),
      child: Text(
        text,
        style: GetTextTheme.font_14_regular.copyWith(
            color: textColor, fontFamily: 'DM Sans', letterSpacing: 0.10),
      ),
    );
  }

/////////////////////////////////////////////////////////////tabs section//////////////////////////////////////////////////////////////////////////
  Widget _buildUpcomingClass() {
    return isUpcomingClass == false
        ? Container(
            height: 180,
            width: double.infinity,
            color: AppColor.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Classes', style: GetTextTheme.font_16_bold),
                    Text('...', style: GetTextTheme.font_16_bold),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  color: Colors.deepOrange[100],
                  child: ListTile(
                    leading: CircleAvatar(child: Image.asset(AppImage.cameron)),
                    title: Text('Wednesday, Mar 01, 20:00 - 20:50',
                        style: GetTextTheme.font_14_regular
                            .copyWith(color: const Color(0xFF2A2A2A))),
                    subtitle: const Text('Safwan, Arabic'),
                  ),
                ),
                SizedBox(height: 10),
                _buildReviewButton("Write a Review", () {
                  Navigator.pop(context);
                  _showBottomSheet(context);
                }),
              ],
            ),
          )
        : Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upcoming Classes', style: GetTextTheme.font_16_bold),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AppImage.upcomingImg),
                        const SizedBox(height: 10),
                        Text(
                          'No upcoming Classes',
                          style: GetTextTheme.font_16_regular.copyWith(
                              color:
                                  Colors.black.withOpacity(0.800000011920929),
                              fontFamily: "DM Sans"),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          height: 44,
                          child: Text(
                            'Don’t put your goals on hold!\nSchedule your next Class now to see progress.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 180,
                width: double.infinity,
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Past Classes', style: GetTextTheme.font_16_bold),
                    const SizedBox(height: 10),
                    Card(
                      color: Colors.deepOrange[100],
                      child: ListTile(
                        leading:
                            CircleAvatar(child: Image.asset(AppImage.cameron)),
                        title: Text('Wednesday, Mar 01, 20:00 - 20:50',
                            style: GetTextTheme.font_14_regular
                                .copyWith(color: const Color(0xFF2A2A2A))),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: Color(0xFF009E22),
                              size: 12,
                            ),
                            Text('Paid \$3.00',
                                style: GetTextTheme.font_12_regular.copyWith(
                                  color: Color(0xFF009E22),
                                  fontSize: 12,
                                  fontFamily: 'DM Sans',
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
  }

  Widget _buildTutor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 251, 241, 238)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImage.brooklyn),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Safwan",
                      style: GetTextTheme.font_14_regular
                          .copyWith(color: const Color(0xFF2A2A2A))),
                  Text("Arabic",
                      style: GetTextTheme.font_12_regular
                          .copyWith(color: const Color(0x7F2A2A2A))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("0 Hour",
                      style: GetTextTheme.font_14_regular
                          .copyWith(color: const Color(0xFF2A2A2A))),
                  Text("to schedule",
                      style: GetTextTheme.font_12_regular
                          .copyWith(color: const Color(0x7F2A2A2A))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$4.00",
                      style: GetTextTheme.font_14_regular
                          .copyWith(color: const Color(0xFF2A2A2A))),
                  Text("per hour",
                      style: GetTextTheme.font_12_regular
                          .copyWith(color: const Color(0x7F2A2A2A))),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        _buildReviewButton("Buy Hours", () {})
      ],
    );
  }

  Widget _buildReviewButton(String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.deepOrange[100],
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          label,
          style: GetTextTheme.font_14_regular.copyWith(color: AppColor.orange),
        ),
      ),
    );
  }

  //////////////////////////////////bottom model sheet/////////////////////////////////////////////////////////////////////////////////////////////

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Class Review",
                          style: GetTextTheme.font_17_regular.copyWith(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                          )),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close))
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  ListTile(
                    title: Text(
                      "Your feedback is important!",
                      style: GetTextTheme.font_14_regular.copyWith(
                        color: Color(0xFF384047),
                        fontFamily: 'DM Sans',
                      ),
                    ),
                    subtitle: Text(
                      "What did you think of your class? We\nwant to hear how it went",
                      style: GetTextTheme.font_12_regular.copyWith(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'DM Sans',
                      ),
                    ),
                    trailing: Image.asset(AppImage.cameron),
                  ),
                  SizedBox(height: 20),
                  _buildRatingSection(
                    "Class",
                    classTags,
                    selectedClassTags,
                    setModalState,
                    "Excellent! I really enjoyed this class",
                  ),
                  SizedBox(height: 20),
                  _buildRatingSection(
                    "Tutor",
                    tutorTags,
                    selectedTutorTags,
                    setModalState,
                    "Excellent! I recommend this tutor",
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      () async {
                        Navigator.pop(context);

                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TipScreen()),
                        );

                        if (result == true) {
                          setState(() {
                            isUpcomingClass = true;
                          });
                        }
                      };
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                        width: 120,
                        color: AppColor.orange,
                        child: Center(
                          child: Text(
                            "Submit",
                            style: GetTextTheme.font_12_regular.copyWith(
                              color: Colors.white,
                              fontFamily: 'DM Sans',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  //////////////////////////////////////////// Rating Section////////////////////////////////////////////

  Widget _buildRatingSection(
    String title,
    List<String> tags,
    List<String> selectedTags,
    StateSetter setModalState,
    String compli,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFEC1C24),
                      fontSize: 10.20,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.16,
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.20,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Text(
              "(Anonymous)",
              style: GetTextTheme.font_11_regular.copyWith(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'DM Sans',
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              color: AppColor.orange,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          compli,
          style: GetTextTheme.font_10_regular.copyWith(color: AppColor.orange),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 8.0,
          children: tags.map((tag) {
            bool isSelected = selectedTags.contains(tag);

            return GestureDetector(
              onTap: () {
                setModalState(() {
                  if (isSelected) {
                    selectedTags.remove(tag);
                  } else {
                    selectedTags.add(tag);
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                margin: EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                  color: isSelected ? AppColor.orange : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  tag,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontFamily: 'DM Sans',
                    fontSize: 12,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
