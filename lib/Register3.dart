import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register2.dart';
import 'package:gym_app/Register4.dart';

class Register3 extends StatefulWidget {
  const Register3({super.key});

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  int numberIndex = 80;
  int numberIndexM1 = 79;
  int numberIndexM2 = 81;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Text(
            "What Is Your Weight",
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
              "Here you should tell us your Weight for better plans scheduling",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Medium",
                fontSize: 18,
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ElevatedButton(
              onPressed: () => {
                setState(
                    () => {numberIndex--, numberIndexM1--, numberIndexM2--})
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              child: const Icon(Icons.keyboard_double_arrow_left_rounded,
                  color: Colors.white, size: 40),
            ),
            Text("$numberIndexM1",
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Poppins",
                    fontSize: 30,
                    color: Colors.white)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Text("$numberIndex",
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Poppins",
                    fontSize: 45,
                    color: Color.fromRGBO(244, 206, 20, 1))),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Text("$numberIndexM2",
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Poppins",
                    fontSize: 30,
                    color: Colors.white)),
            ElevatedButton(
              onPressed: () => {
                setState(
                    () => {numberIndex++, numberIndexM1++, numberIndexM2++})
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              child: const Icon(Icons.keyboard_double_arrow_right,
                  color: Colors.white, size: 40),
            ),
          ]),
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
                          builder: (context) => const Register2()))
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
                          builder: (context) => const Register4()))
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
