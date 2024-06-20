import 'package:flutter/material.dart';
import 'package:gym_app/Register2.dart';
import 'package:gym_app/landing.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var color1 = Color.fromRGBO(244, 206, 20, 1);
  var color2 = Color.fromRGBO(30, 30, 30, 1);
  var colorB1 = Colors.black;
  var colorW1 = Colors.white;
  @override
Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Column(
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
      Text(
        "Tell Us About Yourself",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: "Poppins",
          fontSize: screenWidth * 0.06,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Text(
          "Here you should tell us your genre if you're a Male or Female for better plans scheduling",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: "Medium",
            fontSize: screenWidth * 0.04,
            color: Color.fromRGBO(217, 217, 217, 1),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 25),
      Center(
        child: Column(
          children: [
            Container(
              height: screenWidth * 0.5,
              width: screenWidth * 0.5,
              decoration: BoxDecoration(color: color1, shape: BoxShape.circle),
              child: Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color1, shape: CircleBorder()),
                    onPressed: () => {
                          setState(() {
                            color1 = Color.fromRGBO(244, 206, 20, 1);
                            color2 = Color.fromRGBO(30, 30, 30, 1);
                            colorB1 = Colors.black;
                            colorW1 = Colors.white;
                          })
                        },
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.male, color: colorB1, size: screenWidth * 0.25),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: screenWidth * 0.06,
                                color: colorB1,
                              ),
                            ),
                          ]),
                    )),
              ),
            ),
            const SizedBox(height: 33),
            Container(
              height: screenWidth * 0.5,
              width: screenWidth * 0.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: color2, shape: CircleBorder()),
                  onPressed: () => {
                        setState(() {
                          color2 = Color.fromRGBO(244, 206, 20, 1);
                          color1 = Color.fromRGBO(30, 30, 30, 1);
                          colorW1 = Colors.black;
                          colorB1 = Colors.white;
                        })
                      },
                  child: Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, color: colorW1, size: screenWidth * 0.25),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: screenWidth * 0.06,
                              color: colorW1,
                            ),
                          ),
                        ]),
                  )),
            ),
          ],
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 52,
                  width: 159,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Landing()))
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(82, 81, 76, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text("< Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 20)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 52,
                  width: 159,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register2()))
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(244, 206, 20, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text("Next >",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
}
