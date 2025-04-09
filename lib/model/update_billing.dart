import 'package:flutter/material.dart';
import 'package:skilldizer/Components/navi_button.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class UpdateBilling extends StatefulWidget {
  const UpdateBilling({Key? key}) : super(key: key);

  @override
  State<UpdateBilling> createState() => _UpdateBillingState();
}

class _UpdateBillingState extends State<UpdateBilling> {
  final TextEditingController _studentNameController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _vatNumberController = TextEditingController();
  final TextEditingController _addressLine1Controller = TextEditingController();
  final TextEditingController _addressLine2Controller = TextEditingController();
  final TextEditingController _addressLine3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Update Billing Info',
            style: GetTextTheme.font_16_bold.copyWith(
              color: Colors.black,
              fontFamily: 'DM Sans',
              height: 0.07,
              letterSpacing: 0.10,
            ),
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _studentNameController,
            label: 'Student Name',
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _companyNameController,
            optional: true,
            label: 'Company Name',
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _vatNumberController,
            optional: true,
            label: 'VAT Number',
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _addressLine1Controller,
            optional: true,
            label: 'Address Line 1',
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _addressLine2Controller,
            optional: true,
            label: 'Address Line 2',
          ),
          SizedBox(height: 16),
          _buildTextField(
            controller: _addressLine3Controller,
            optional: true,
            label: 'Address Line 3',
          ),
          SizedBox(height: 32),
          NaviButton(
              text: "Update Billing Info",
              textColor: AppColor.white,
              backgroundColor: AppColor.orange,
              onPressed: () {})
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool optional = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GetTextTheme.font_14_regular.copyWith(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0.09,
              letterSpacing: 0.10,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: 'Optional',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.grey_shade),
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ],
      ),
    );
  }
}
