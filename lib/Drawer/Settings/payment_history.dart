import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/app_color.dart';
import 'package:skilldizer/Utils/txt_theme.dart';
import 'package:skilldizer/model/update_billing.dart';

class PaymentHistoryPage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'date': '12 Feb 2023', 'hours': '1 hr', 'subject': 'Arabic'},
    {'date': '10 Feb 2023', 'hours': '2 hrs', 'subject': 'English'},
    {'date': '30 Jan 2023', 'hours': '3 hrs', 'subject': 'French'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          color: AppColor.blck,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Methods",
                style: GetTextTheme.font_16_bold.copyWith(
                  color: Colors.white,
                  fontFamily: 'DM Sans',
                  height: 0.07,
                  letterSpacing: 0.10,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0)),
                    ),
                    builder: (context) => UpdateBilling(),
                  );
                },
                child: Text(
                  "Update Billing Info",
                  style: GetTextTheme.font_12_regular.copyWith(
                    color: Colors.white,
                    fontFamily: 'DM Sans',
                    height: 0.07,
                    letterSpacing: 0.10,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                _buildTableHeader(),
                Divider(),
                ...data.map((item) => Column(
                      children: [
                        _buildTableRow(item),
                        Divider(),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Hours',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Subject',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Download All',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(item['date'] ?? '',
              style: GetTextTheme.font_14_regular.copyWith(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'DM Sans',
                height: 0.09,
                letterSpacing: 0.10,
              ),
              overflow: TextOverflow.ellipsis),
          Text(item['hours'] ?? '',
              style: GetTextTheme.font_14_regular.copyWith(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'DM Sans',
                height: 0.09,
                letterSpacing: 0.10,
              ),
              overflow: TextOverflow.ellipsis),
          Text(item['subject'] ?? '',
              style: GetTextTheme.font_14_regular.copyWith(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'DM Sans',
                height: 0.09,
                letterSpacing: 0.10,
              ),
              overflow: TextOverflow.ellipsis),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.receipt_long, color: Colors.orange),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Get receipt',
                  style: TextStyle(color: Colors.orange),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
