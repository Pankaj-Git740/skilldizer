import 'package:flutter/material.dart';
import 'package:skilldizer/Drawer/Settings/tutor_profile.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isClassesSchedulingChecked = true;
  bool isGeneralRemindersChecked = true;
  bool isUpdatesTipsOffersChecked = true;
  bool isSkilldizerBlogChecked = false;
  bool isQASectionChecked = false;
  bool isClassesMessagesChecked = true;
  bool isSkilldizerInsightsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text('Notification Centre',
              style: GetTextTheme.font_16_regular.copyWith(
                color: Colors.black,
                fontFamily: 'DM Sans',
                height: 1.5, // Increased height for better readability
                letterSpacing: 0.10,
              )),
        ),
        Divider(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle("   Email Notification"),
                  _buildCheckboxListTile(
                    title: "Classes scheduling",
                    subtitle: "Alerts about new classes and schedule\nchanges.",
                    value: isClassesSchedulingChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isClassesSchedulingChecked = newValue!;
                      });
                    },
                  ),
                  _buildCheckboxListTile(
                    title: "General reminders",
                    subtitle:
                        "Notifications about classes, tutor messages, and payments.",
                    value: isGeneralRemindersChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isGeneralRemindersChecked = newValue!;
                      });
                    },
                  ),
                  _buildCheckboxListTile(
                    title: "Updates, tips and offers",
                    subtitle:
                        "Stay connected with product updates, helpful\ntips and special offers.",
                    value: isUpdatesTipsOffersChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isUpdatesTipsOffersChecked = newValue!;
                      });
                    },
                  ),
                  _buildCheckboxListTile(
                    title: "Skilldizer Blog",
                    subtitle: "Occasional newsletter with the\nlatest posts.",
                    value: isSkilldizerBlogChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isSkilldizerBlogChecked = newValue!;
                      });
                    },
                  ),
                  _buildCheckboxListTile(
                    title: "Q&A section",
                    subtitle: "Receive tutors' replies to your \nquestions.",
                    value: isQASectionChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isQASectionChecked = newValue!;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle("SMS Notification"),
                  _buildCheckboxListTile(
                    title: "Classes and messages",
                    subtitle:
                        "SMS alerts about new requests, trial class bookings and upcoming trial class.",
                    value: isClassesMessagesChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isClassesMessagesChecked = newValue!;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  _buildSectionTitle("Skilldizer insights"),
                  _buildCheckboxListTile(
                    title:
                        "Allow Skilldizer team to contact me for product improvements",
                    subtitle:
                        "Product improvements, research and beta testing.",
                    value: isSkilldizerInsightsChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isSkilldizerInsightsChecked = newValue!;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        NavigationUtils.navigateTo(context, TutorProfilePage());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Save Settings",
                          style: GetTextTheme.font_16_regular.copyWith(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            height: 0.06,
                            letterSpacing: 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title,
          style: GetTextTheme.font_14_regular.copyWith(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            height: 1.5, // Adjust line height for title
            letterSpacing: 0.10,
          )),
    );
  }

  Widget _buildCheckboxListTile({
    required String title,
    required String subtitle,
    required bool value,
    required Function(bool?) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CheckboxListTile(
        title: Text(
          title,
          style: GetTextTheme.font_14_xtraRegular.copyWith(
            color: Colors.black,
            fontFamily: 'DM Sans',
            letterSpacing: 0.10,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: GetTextTheme.font_12_xtraRegular.copyWith(
            color: Colors.black.withOpacity(0.5),
            fontFamily: 'DM Sans',
            letterSpacing: 0.10,
            height: 1.4, // Adjust line height for subtitles
          ),
        ),
        value: value,
        onChanged: onChanged,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero, // Remove default padding
        dense: true, // Make list tile more compact
        activeColor: AppColor.orange,
      ),
    );
  }
}
