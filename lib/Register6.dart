import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register3.dart';
import 'package:gym_app/Register4.dart';
import 'package:gym_app/Register5.dart';
import 'package:gym_app/Register6.dart';
import 'package:gym_app/Register7.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register6 extends StatefulWidget {
  const Register6({super.key});

  @override
  State<Register6> createState() => _Register6State();
}

class _Register6State extends State<Register6> {
  int slectedIndex = 2;
  var color1 = Color.fromRGBO(244, 206, 20, 1);
  var color2 = Color.fromRGBO(30, 30, 30, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Text(
                "What Is Your Activity Level",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Poppins",
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "Here you should tell us your Activity Level for better plans scheduling",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Medium",
                    fontSize: 18,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () => {setState(() => slectedIndex = 1),setCookie(slectedIndex)},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: slectedIndex == 1 ? color1 : color2),
                    child: Text("Beginner",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color:
                                slectedIndex == 1 ? Colors.black : Colors.white,
                            decoration: TextDecoration.none)),
                  )),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () => {setState(() => slectedIndex = 2,),setCookie(slectedIndex)},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: slectedIndex == 2 ? color1 : color2,
                    ),
                    child: Text("Medium",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color:
                                slectedIndex == 2 ? Colors.black : Colors.white,
                            decoration: TextDecoration.none)),
                  )),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () =>
                        {setState(() => slectedIndex = 3), setCookie(slectedIndex)},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: slectedIndex == 3 ? color1 : color2,
                    ),
                    child: Text("Advanced",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color:
                                slectedIndex == 3 ? Colors.black : Colors.white,
                            decoration: TextDecoration.none)),
                  )),
            ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 52,
              width: 159,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register5()))
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
                      MaterialPageRoute(builder: (context) => Register7()))
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
        )
      ],
    );
  }
  Future<void> setCookie(int selectedIndex) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("activity", "$selectedIndex");
    print(prefs.getString("activity"));
  }
}
