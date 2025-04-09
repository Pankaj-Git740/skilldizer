import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/app_icon.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/model/payment_modal.dart';

class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          height: 50,
          width: double.infinity,
          color: AppColor.blck,
          child: Text(
            "Payment Methods",
            style: GetTextTheme.font_16_bold.copyWith(
              color: Colors.white,
              fontFamily: 'DM Sans',
              height: 0.07,
              letterSpacing: 0.10,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Save a payment method for fast and\neasy Class payments.\nPreply uses industry-standard\nencryption to protect your information.",
                style: GetTextTheme.font_14_xtraRegular.copyWith(
                  color: Color(0xFF090F19),
                  fontFamily: 'DM Sans',
                  height: 1.7,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 150,
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Credit or Debit Card",
                      style: GetTextTheme.font_14_bold.copyWith(
                        color: Color(0xFF090F19),
                        fontFamily: 'DM Sans',
                        height: 0.09,
                        letterSpacing: 0.10,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(AppIcon.master2),
                        SizedBox(width: 5),
                        Text(
                          "Matercard****4034",
                          style: GetTextTheme.font_14_regular.copyWith(
                            color: Color(0xFF090F19),
                            fontFamily: 'DM Sans',
                            height: 0.09,
                            letterSpacing: 0.10,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        _buildButton(
                          "Change Card",
                          Color(0xFFFF5A00),
                          Color(0xFFFF5A00),
                          AppColor.white,
                          () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25.0)),
                              ),
                              builder: (context) => PaymentModal(),
                            );
                          },
                        ),
                        SizedBox(width: 20),
                        _buildButton(
                          "Remove",
                          const Color.fromARGB(255, 251, 214, 203),
                          AppColor.orange,
                          AppColor.orange,
                          () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildButton(String label, Color bg, Color borderBg, Color txtColor,
      VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 110,
        decoration: BoxDecoration(
          border: Border.all(color: borderBg),
          color: bg,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(
            label,
            style: GetTextTheme.font_14_xtraRegular.copyWith(
              color: txtColor,
              height: 0.06,
              letterSpacing: 0.09,
            ),
          ),
        ),
      ),
    );
  }
}
