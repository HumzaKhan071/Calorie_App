import 'package:calorie_app/Screens/weight_screen.dart';
import 'package:calorie_app/Widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What are your goals?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text("Select all that apply",
                  style: TextStyle(color: Color(0XFF707070))),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomContainer(
                    icon: FontAwesomeIcons.fireFlameSimple,
                    bordercolor: Color(0xFFF7D45E),
                    title: "Lose Weight",
                    iconColor: Colors.orange,
                    textColor: Color(0xFFF7D45E),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                    icon: FontAwesomeIcons.handBackFist,
                    bordercolor: Color(0xFFF2F2F2),
                    title: "Build Muscle",
                    textColor: Colors.black,
                    iconColor: Color(0xFFCBAE88),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomContainer(
                    icon: FontAwesomeIcons.boltLightning,
                    bordercolor: Color(0xFFF2F2F2),
                    title: "Increase Energy",
                    iconColor: Colors.orange,
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                      icon: FontAwesomeIcons.moon,
                      bordercolor: Color(0xFFF7D45E),
                      title: "Improve Sleep",
                      iconColor: Colors.orange,
                      textColor: Color(0xFFF7D45E)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomContainer(
                      icon: FontAwesomeIcons.droplet,
                      bordercolor: Color(0xFFF2F2F2),
                      title: "Manage Glucose",
                      textColor: Colors.black,
                      iconColor: Colors.red),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                      icon: FontAwesomeIcons.person,
                      bordercolor: Color(0xFFF2F2F2),
                      title: "Be Healtheir",
                      textColor: Colors.black,
                      iconColor: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => WeightScreen()));
                  },
                  child: customButton(
                      size: size, color: Colors.black, text: "Get Started"))
            ],
          ),
        ),
      ),
    );
  }
}
