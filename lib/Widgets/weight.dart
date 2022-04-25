import 'package:flutter/material.dart';

class Weight extends StatelessWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFFD853)),
                ),
                Text(
                  "Weight",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Weightage(
                weight: "100 Kg",
                name: "Starting",
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Weightage(
                weight: "100 Kg",
                name: "Latest",
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Weightage(
                weight: "90 Kg",
                name: "Goal",
                color: Color(0xFFFFD853),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Weightage extends StatelessWidget {
  final String weight;
  final Color color;
  final String name;
  const Weightage({
    Key? key,
    required this.weight,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weight,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 30, color: color)),
        Text(
          name,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
