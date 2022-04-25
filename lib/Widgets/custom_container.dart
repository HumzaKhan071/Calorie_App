import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final Color bordercolor;
  final Color iconColor;
  final Color textColor;
  final IconData icon;
  const CustomContainer(
      {Key? key,
      required this.title,
      required this.bordercolor,
      required this.iconColor,
      required this.textColor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            color: bordercolor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: iconColor,
            size: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: textColor, fontSize: 15, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
