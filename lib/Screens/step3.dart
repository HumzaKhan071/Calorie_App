import 'package:calorie_app/Screens/step4.dart';
import 'package:calorie_app/Screens/weight_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../Widgets/custom_button.dart';

class thirdScreen extends StatelessWidget {
  const thirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What's your sex?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text("This helps us create your personalized plan",
                  style: TextStyle(color: Color(0XFF707070))),
              SizedBox(height: 20),
              Text("Step 3 of 4"),
              SizedBox(height: 10),
              StepProgressIndicator(
                totalSteps: 100,
                currentStep: 75,
                size: 8,
                padding: 0,
                selectedColor: Colors.yellow,
                unselectedColor: Colors.cyan,
                roundedEdges: Radius.circular(10),
                selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFFEE590), Color(0xFFFEE590)],
                ),
                unselectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFF2F2F2), Color(0xFFF2F2F2)],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Color(0xFFEBEAEB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.venus),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                SizedBox(
                                  width: size.width * 0.3,
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEE590),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Color(0xFFEBEAEB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.mars),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                SizedBox(
                                  width: size.width * 0.35,
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.37),
              Center(
                  child: Container(
                height: 40,
                width: 500,
                decoration: BoxDecoration(
                    color: Color(0xFFEBEAEB),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.shield,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("All of your information is confidential")
                  ],
                ),
              )),
              SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => fourthScreen()));
                  },
                  child: customButton(
                      size: size, color: Color(0xFFFEE590), text: "Continue"))
            ]),
      ),
    );
  }
}
