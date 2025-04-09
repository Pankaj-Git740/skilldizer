import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class PaymentModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: AppColor.white,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text('Save a Payment Card',
                        style: GetTextTheme.font_16_regular.copyWith(
                          color: Colors.black,
                          fontFamily: 'DM Sans',
                          height: 0.07,
                          letterSpacing: 0.10,
                        )),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: '1234 1234 1234 1234',
                  hintStyle: GetTextTheme.font_14_xtraRegular.copyWith(
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'DM Sans',
                    height: 0.09,
                    letterSpacing: 0.10,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(AppIcon.master, width: 30),
                        SizedBox(width: 5),
                        Image.asset(AppIcon.american, width: 30),
                        SizedBox(width: 5),
                        Image.asset(AppIcon.blck_Visa, width: 30),
                      ],
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[50]!)),
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'MM/YY',
                        hintStyle: GetTextTheme.font_14_xtraRegular.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'DM Sans',
                          height: 0.09,
                          letterSpacing: 0.10,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[50]!)),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        hintStyle: GetTextTheme.font_14_xtraRegular.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'DM Sans',
                          height: 0.09,
                          letterSpacing: 0.10,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[50]!)),
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF5A00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Save Card',
                        style: GetTextTheme.font_16_regular.copyWith(
                          color: Colors.white,
                          fontFamily: 'DM Sans',
                          height: 0.06,
                          letterSpacing: 0.09,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: AppColor.blck,
                thickness: 1.5,
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lock_outline, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'All payment info is encrypted and stored\nsecurely by Stripe. We do not store your\npayment info on our servers.',
                      style: GetTextTheme.font_12_xtraRegular.copyWith(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'DM Sans',
                        height: 1.8,
                        letterSpacing: 0.10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
