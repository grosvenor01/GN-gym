import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register3.dart';
import 'dart:io'; // FOR ACCESSING AND FILE MANIPULATION
import 'package:image_picker/image_picker.dart';

class Register7 extends StatefulWidget {
  const Register7({super.key});

  @override
  State<Register7> createState() => _Register7State();
}

class _Register7State extends State<Register7> {
  var slectedIndex;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Text(
                "Full Your Profile",
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
                  "Finalising your profile by giving your information bellow ",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Medium",
                    fontSize: 18,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 110,
                height: 110,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/background.png'),
                    ),
                    Positioned(
                      bottom: -2,
                      right: -2,
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Color.fromRGBO(244, 206, 20, 1),
                        onPressed: () {
                          //faut nzidou wach ysra ki y3abez
                          pick_image_gallery();
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
            ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 52,
              width: 159,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Register()))
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
                          builder: (context) => const Register3()))
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

  Future pick_image_gallery() async {
    final returnedpic =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      image = File(returnedpic!.path);
    });
  }
}
