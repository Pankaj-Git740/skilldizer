import 'package:flutter/material.dart';
import 'package:skilldizer/Utils/txt_theme.dart';

class Tutor {
  final String name;
  final String imageUrl;
  final String hoursAvailable;
  final VoidCallback onTap;

  Tutor(this.onTap,
      {required this.name,
      required this.imageUrl,
      required this.hoursAvailable});
}

class TutorSelectionModal extends StatelessWidget {
  final List<Tutor> tutors;

  TutorSelectionModal({required this.tutors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Select a tutor to schedule',
                  style: GetTextTheme.font_15_regular.copyWith(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                  )),
              GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.close))
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 10),
        ListView.separated(
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          itemCount: tutors.length,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(tutors[index].imageUrl),
                  ),
                  title: Text(tutors[index].name,
                      style: GetTextTheme.font_16_regular.copyWith(
                        color: Color(0xFF2A2A2A),
                        fontFamily: 'DM Sans',
                      )),
                  subtitle: Text(tutors[index].hoursAvailable,
                      style: GetTextTheme.font_12_regular.copyWith(
                        color: Color(0x7F2A2A2A),
                        fontFamily: 'DM Sans',
                      )),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                  ),
                  onTap: tutors[index].onTap),
            );
          },
        ),
      ],
    );
  }
}
