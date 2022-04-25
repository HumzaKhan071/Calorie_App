
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String text;
  final Color color;
  const customButton({
    Key? key,
    required this.size, required this.text, required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 30),
      )),
    );
  }
}
