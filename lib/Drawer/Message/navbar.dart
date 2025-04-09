import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';

import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/model/message_listview.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                thickness: 1.4,
                color: AppColor.lightGrey,
              ),
              SizedBox(height: 5),
              Text(
                "Message",
                style: GetTextTheme.font_20_bold.copyWith(color: AppColor.blck),
              ),
              SizedBox(height: 5),
              Divider(
                thickness: 1.4,
                color: AppColor.lightGrey,
              )
            ],
          ),
          bottom: TabBar(
            unselectedLabelStyle:
                GetTextTheme.font_16_regular.copyWith(color: AppColor.grey),
            indicatorColor: AppColor.orange,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
            labelStyle:
                GetTextTheme.font_16_regular.copyWith(color: AppColor.orange),
            tabs: [
              Tab(text: "All"),
              Tab(text: "Unread"),
              Tab(text: "Archived"),
            ],
          ),
        ),
        body: TabBarView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            MessageListView(),
            Center(child: Text('Unread Tab Content')),
            Center(child: Text('Archived Tab Content')),
          ],
        ),
      ),
    );
  }
}
