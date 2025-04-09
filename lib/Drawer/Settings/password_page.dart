import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._buildPasswordFields(),
                SizedBox(height: 40),
                _buildDeleteButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Text(
        'Change your Password',
        style: GetTextTheme.font_16_regular.copyWith(
          color: Colors.black,
          height: 1.2,
          letterSpacing: 0.10,
        ),
      ),
    );
  }

  List<Widget> _buildPasswordFields() {
    return [
      _buildPasswordField('Current Password', showForgotPassword: true),
      _buildPasswordField('New Password'),
      _buildPasswordField('Verify Password'),
    ];
  }

  Widget _buildPasswordField(String label, {bool showForgotPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GetTextTheme.font_14_xtraRegular.copyWith(
              color: Colors.black,
              height: 0.09,
              letterSpacing: 0.10,
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.grey),
              ),
            ),
            obscureText: true,
          ),
          if (showForgotPassword)
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot your Password?',
                    style: TextStyle(
                        color: const Color.fromARGB(232, 255, 111, 0))),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDeleteButton() {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFFF5A00),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Text(
          "Change Password",
          style: GetTextTheme.font_16_bold.copyWith(
            color: Colors.white,
            height: 0.06,
            letterSpacing: 0.09,
          ),
        ),
      ),
    );
  }
}
