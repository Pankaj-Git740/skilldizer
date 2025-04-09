import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class PackageScreen extends StatelessWidget {
  final String tutorName = "Safwan R.";
  final String tutorImage = AppImage.safwan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(tutorImage),
              radius: 30.0,
            ),
            SizedBox(height: 10.0),
            Text(
              'Buy a package from $tutorName',
              style: GetTextTheme.font_17_medium,
            ),
            Text(
              'Take classes at great rates. See how fast you progress!',
              style: GetTextTheme.font_13_medium
                  .copyWith(color: AppColor.grey_shade),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: _buildPackageList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPackageList() {
    List<Map<String, dynamic>> packages = [
      {"name": "BASIC", "credit": "1 Hour Credit", "price": "\$10"},
      {"name": "STANDARD", "credit": "4 Hours Credit", "price": "\$40"},
      {
        "name": "PROFESSIONAL",
        "credit": "15 Hours Credit",
        "price": "\$150",
        "popular": true
      },
      {"name": "PREMIUM", "credit": "8 Hours Credit", "price": "\$80"},
      {"name": "PLATINUM", "credit": "20 Hours Credit", "price": "\$200"},
    ];

    return packages.map((package) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 220,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      package['name'],
                      style: GetTextTheme.font_16_bold,
                    ),
                    Text(
                      package['credit'],
                      style: GetTextTheme.font_14_regular
                          .copyWith(color: AppColor.grey),
                    ),
                    Text(
                      package['price'],
                      style: GetTextTheme.font_26_medium
                          .copyWith(color: AppColor.blck),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColor.blck,
                        backgroundColor:
                            const Color.fromARGB(255, 253, 219, 197),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child:
                          Text("Purchase", style: GetTextTheme.font_14_medium),
                    ),
                  ],
                ),
              ),
            ),
            if (package.containsKey('popular') && package['popular'])
              Positioned(
                top: 0,
                left: 77,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 89, vertical: 2.0),
                  decoration: BoxDecoration(
                    color: AppColor.orange,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: Text(
                    "Popular",
                    style: GetTextTheme.font_11_medium
                        .copyWith(color: AppColor.white),
                  ),
                ),
              ),
          ],
        ),
      );
    }).toList();
  }
}
