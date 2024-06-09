import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register3.dart';
import 'package:gym_app/Register4.dart';
import 'package:gym_app/Register6.dart';

class Register5 extends StatefulWidget {
  const Register5({super.key});

  @override
  State<Register5> createState() => _Register5State();
}

class _Register5State extends State<Register5> {
 List<bool?> _ischecked = [false, false, false, false, false,false , false , false];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Text(
                "What Is Your Goal",
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
                  "Here you should tell us your Goal for better plans scheduling",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Medium",
                    fontSize: 18,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Gain Weight",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[1],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[1] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Improving Endurance",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[2],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[2] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Lose Weight",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[3],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[3] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Build Muscles",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[4],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[4] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Be Healthy",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[5],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[5] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: Scaffold(
                      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                      body: CheckboxListTile(
                        title: const Text("Other",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        value: _ischecked[0],
                        onChanged: ((bool? value) => setState(() {
                              _ischecked[0] =  value != false;
                            })),
                        activeColor: Color.fromRGBO(244, 206, 20, 1),
                        checkColor: Colors.black,
                      ))
                ),
              SizedBox(height: 10),
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
                          builder: (context) => const Register4()))
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register6()))
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
}
