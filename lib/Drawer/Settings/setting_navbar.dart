import 'package:flutter/material.dart';
import 'package:skilldizer/Drawer/Settings/account_page.dart';
import 'package:skilldizer/Drawer/Settings/email_page.dart';
import 'package:skilldizer/Drawer/Settings/faqs_page.dart';
import 'package:skilldizer/Drawer/Settings/notification.dart';
import 'package:skilldizer/Drawer/Settings/password_page.dart';
import 'package:skilldizer/Drawer/Settings/payment_history.dart';
import 'package:skilldizer/Drawer/Settings/payment_method.dart';
import 'package:skilldizer/Utils/app_color.dart';

class SettingNavbar extends StatefulWidget {
  @override
  _SettingNavbarState createState() => _SettingNavbarState();
}

class _SettingNavbarState extends State<SettingNavbar> {
  int selectedIndex = 0;

  final List<String> menuItems = [
    "Account",
    "Email",
    "Password",
    "Payment Method",
    "Payment history",
    "Notification",
    "FAQs"
  ];

  final List<Widget> pages = [
    AccountPage(),
    EmailPage(),
    PasswordPage(),
    PaymentMethodPage(),
    PaymentHistoryPage(),
    NotificationPage(),
    FAQsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: AppColor.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: menuItems.asMap().entries.map((entry) {
                      int index = entry.key;
                      String item = entry.value;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20),
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? AppColor.orange
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                item,
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
              ],
            ),
          ),
          Expanded(
            child: pages[selectedIndex],
          ),
        ],
      ),
    );
  }
}
