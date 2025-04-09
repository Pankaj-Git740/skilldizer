import 'package:flutter/material.dart';
import 'package:skilldizer/Components/customAppBar.dart';
import 'package:skilldizer/Drawer/My%20Classes/my_classes.dart';
import 'package:skilldizer/Drawer/Settings/setting_navbar.dart';
import 'package:skilldizer/Utils/app_image.dart';
import 'package:skilldizer/Drawer/Message/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedOption = 'Messages';

  final List<Map<String, String>> drawerOptions = [
    {'title': 'Messages', 'screen': 'Messages'},
    {'title': 'My Classes', 'screen': 'My Classes'},
    {'title': 'Saved Tutors', 'screen': 'Saved Tutors'},
    {'title': 'Statistics', 'screen': 'Statistics'},
    {'title': 'Points', 'screen': 'Points'},
    {'title': 'Settings', 'screen': 'Settings'},
    {'title': 'Log out', 'screen': 'Log out'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildDrawerHeader(),
            ...drawerOptions.map((option) => ListTile(
                  title: Text(option['title']!,
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    setState(() {
                      selectedOption = option['screen']!;
                    });
                    Navigator.of(context).pop();
                  },
                ))
          ],
        ),
      ),
      body: _getSelectedScreen(selectedOption),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        children: [
          CircleAvatar(child: Image.asset(AppImage.img1), radius: 24.0),
          SizedBox(width: 10.0),
          Text('Reem', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          Spacer(),
          IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _getSelectedScreen(String option) {
    switch (option) {
      case 'Messages':
        return Navbar();
      case 'My Classes':
        return MyClassesScreen();

      case 'Statistics':
        return Center(
          child: Text("Statistics selected"),
        );
      case 'Points':
        return Center(
          child: Text("points selected"),
        );
      case 'Settings':
        return SettingNavbar();

      case 'Log out':
        return Center(
          child: Text("Logout selected"),
        );
      default:
        return Center(child: Text('$option Screen'));
    }
  }
}
