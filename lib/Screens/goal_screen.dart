import 'package:calorie_app/Widgets/barchart.dart';
import 'package:calorie_app/Widgets/custom_button.dart';
import 'package:calorie_app/Widgets/weight.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/bottom_nav.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          foregroundImage: AssetImage("assets/icon.png"),
        ),
        title: Text(
          "Goals",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.gear,
                color: Color(0xFF707070),
                size: 40,
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BarChartSample2(),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFEE590),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.plus),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Add New Measurement",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Weight()
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomanNav(),
    );
  }
}
