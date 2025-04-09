import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<Map<String, String>> countries = [
    {'name': 'United States', 'flag': '🇺🇸', 'code': '+1-US'},
    {'name': 'Canada', 'flag': '🇨🇦', 'code': '+1-CA'},
    {'name': 'United Kingdom', 'flag': '🇬🇧', 'code': '+44'},
    {'name': 'India', 'flag': '🇮🇳', 'code': '+91'},
  ];

  String selectedCountryCode = '+1-US';

  String selectedFlag = '🇺🇸';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text('Account Settings',
                style: GetTextTheme.font_16_regular.copyWith(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  height: 0.07,
                  letterSpacing: 0.10,
                )),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Profile Image",
                style: GetTextTheme.font_14_regular.copyWith(
                    fontFamily: 'DM Sans',
                    height: 0.09,
                    letterSpacing: 0.10,
                    color: AppColor.blck),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image.asset(AppImage.acc_Profile),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.orange),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          "Upload a Photo",
                          textAlign: TextAlign.center,
                          style: GetTextTheme.font_12_regular.copyWith(
                            color: Color(0xFFFF5A00),
                            fontSize: 12,
                            fontFamily: 'DM Sans',
                            height: 0.11,
                            letterSpacing: 0.09,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Full Name",
                style: GetTextTheme.font_16_medium.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    height: 0.09,
                    letterSpacing: 0.10),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: 'Enter First Name',
                        prefixIcon: Image.asset(
                          AppIcon.person,
                        ),
                        hintStyle: GetTextTheme.font_10_regular.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'DM Sans',
                          height: 0.18,
                          letterSpacing: 0.10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: AppColor.grey_shade),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: 'Enter Last Name',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            AppIcon.person,
                          ),
                        ),
                        hintStyle: GetTextTheme.font_10_regular.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'DM Sans',
                          height: 0.18,
                          letterSpacing: 0.10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: AppColor.grey_shade),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Phone Number",
                style: GetTextTheme.font_16_medium,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Container(
                    padding: EdgeInsets.only(right: 8.0, left: 8),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedCountryCode,
                        items: countries.map((country) {
                          return DropdownMenuItem<String>(
                            value: country['code'],
                            child: Row(
                              children: [
                                Text(country['flag'] ?? ''),
                                SizedBox(width: 5),
                                Text(
                                  country['code']?.split('-')[0] ?? '',
                                  style: GetTextTheme.font_12_regular.copyWith(
                                    color: Colors.black,
                                    fontFamily: 'DM Sans',
                                    height: 0.12,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountryCode = value ?? '+1-US';
                            selectedFlag = countries.firstWhere((country) =>
                                    country['code'] ==
                                    selectedCountryCode)['flag'] ??
                                '🇺🇸';
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Timezone",
                style: GetTextTheme.font_14_regular.copyWith(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  height: 0.09,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: 'Timezone',
                  labelStyle: GetTextTheme.font_10_xtraRegular.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    height: 0.18,
                    letterSpacing: 0.10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: AppColor.grey_shade),
                  ),
                ),
                items: <String>['Asia/Amman GMT + 3:00', 'Other Timezones']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              SizedBox(height: 20),
              Text('Social Networks',
                  style: GetTextTheme.font_14_regular.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    height: 0.09,
                    letterSpacing: 0.10,
                  )),
              ListTile(
                leading: Image.asset(AppIcon.grey_Fb),
                title: Text(
                  'Not connected to Facebook account',
                  style: GetTextTheme.font_12_regular.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    height: 0.12,
                    letterSpacing: 0.10,
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {},
                  child: Text('Connect',
                      style: GetTextTheme.font_12_regular.copyWith(
                          color: Color(0xFFFF5A00),
                          fontFamily: 'DM Sans',
                          height: 0.12,
                          letterSpacing: 0.10)),
                ),
              ),
              ListTile(
                leading: Image.asset(AppIcon.grey_G),
                title: Text(
                  'Not connected to Google account',
                  style: GetTextTheme.font_12_regular.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    height: 0.12,
                    letterSpacing: 0.10,
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Connect',
                    style: GetTextTheme.font_12_regular.copyWith(
                      color: Color(0xFFFF5A00),
                      fontFamily: 'DM Sans',
                      height: 0.12,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Color.fromARGB(255, 255, 53, 53),
                    ),
                    child: Center(
                      child: Text(
                        "Delete Account",
                        style: GetTextTheme.font_14_regular.copyWith(
                          color: Colors.white,
                          fontFamily: 'DM Sans',
                          height: 0.08,
                          letterSpacing: 0.09,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: AppColor.orange),
                    child: Center(
                      child: Text(
                        "Save Settings",
                        style: GetTextTheme.font_14_regular.copyWith(
                          color: Colors.white,
                          fontFamily: 'DM Sans',
                          height: 0.08,
                          letterSpacing: 0.09,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
