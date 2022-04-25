import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customdropdown extends StatelessWidget {
  final String title;
  final String text;
  const Customdropdown({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 110,
      decoration: BoxDecoration(
          color: Color(0xFFEBEAEB), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                FaIcon(
                  FontAwesomeIcons.caretDown,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
