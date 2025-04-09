import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Utils/route.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/Drawer/Message/package_screen.dart';

class BuyHoursModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.7,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  title: Text(
                    "Buy Hours",
                    style: GetTextTheme.font_17_medium,
                  ),
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  elevation: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.sync_alt_outlined),
                    label: Text("Transfer credits"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColor.orange,
                      backgroundColor: const Color.fromARGB(255, 252, 213, 191),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 16, bottom: 16),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 236, 224),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  titleAlignment: ListTileTitleAlignment.top,
                                  contentPadding: EdgeInsets.only(
                                      left: 8, right: 8, top: 8),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(AppImage.img1),
                                    radius: 20.0,
                                  ),
                                  title: Text(
                                    "Safwan R.",
                                    style: GetTextTheme.font_17_medium,
                                  ),
                                  subtitle: Text(
                                    "Arabic",
                                    style: GetTextTheme.font_13_medium
                                        .copyWith(color: AppColor.grey_shade),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      NavigationUtils.navigateTo(
                                          context, PackageScreen());
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: AppColor.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Text(
                                        "Buy Hours",
                                        style: GetTextTheme.font_12_medium
                                            .copyWith(color: AppColor.white),
                                      ),
                                    ),
                                  )),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Text(
                                  "Trial Class Booked",
                                  style: GetTextTheme.font_11_medium,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
