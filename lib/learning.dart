import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "package:gym_app/reciepe.dart";
import 'dart:convert';
import 'dart:io';
import 'dart:ui' show rootBundle;

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  int number = 0;
  var jsonData=[];
  @override
  Widget build(BuildContext context) {
    jsonLength();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Some Recipes",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 20, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.more_horiz,
            size: 21,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Popular Now",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
          ),
          for (int i = 0; i < number ~/ 2; i++)
            Row(
              children: [
                Container(
                  height: 217,
                  width: 160,
                  margin: const EdgeInsets.only(left: 26, top: 26),
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reciepe()))
                          },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 124,
                            width: 124,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/plat1.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 13,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                          const Row(
                            children: [
                              Text(
                                "10 carb/g",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 130, 5, 1),
                                    fontSize: 13),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(
                                Icons.bakery_dining_rounded,
                                size: 25,
                                color: Colors.red,
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  height: 217,
                  width: 160,
                  margin: const EdgeInsets.only(left: 26, top: 26),
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 124,
                            width: 124,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/plat1.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet Lorem",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 13,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                          const Row(
                            children: [
                              Text(
                                "10 carb/g",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 130, 5, 1),
                                    fontSize: 13),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(
                                Icons.bakery_dining_rounded,
                                size: 25,
                                color: Colors.red,
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          if (number % 2 == 1)
            Row(
              children: [
                Container(
                  height: 217,
                  width: 160,
                  margin: const EdgeInsets.only(left: 26, top: 26),
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reciepe()))
                          },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 124,
                            width: 124,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/plat1.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet Lorem",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 13,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                          const Row(
                            children: [
                              Text(
                                "10 carb/g",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 130, 5, 1),
                                    fontSize: 13),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(
                                Icons.bakery_dining_rounded,
                                size: 25,
                                color: Colors.red,
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            )
        ],
      ),
    );
  }

  Future jsonLength() async {
    String jsonString = await rootBundle.loadString('assets/Recipes.json');
    setState(() {
      jsonData = json.decode(jsonString);
      number = jsonData.length;
    });
  }
}
