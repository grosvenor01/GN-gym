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
  var jsonData = [];
  @override
  Widget build(BuildContext context) {
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
          FutureBuilder(
              future: jsonLength(),
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error Occured"));
                } else {
                  final dady = snapshot.data!;
                  return Column(
                    children: [
                      for (int i = 0; i < number-1 ; i=i+2)
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
                                            MaterialPageRoute(builder: (context) => Reciepe(value : jsonData[i]["Name"])))
                                      },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 124,
                                        decoration: BoxDecoration(
                                            borderRadius:  BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Food/"+jsonData[i]['image']+".png"),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5,right: 10,left: 10),
                                        child : Text(
                                        jsonData[i]["Name"],
                                        style: const TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 13,
                                            color: Color.fromRGBO(
                                                138, 138, 138, 1)),
                                      ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Text(
                                            dady[i]['Calories']+" Cal",
                                            style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 130, 5, 1),
                                                fontSize: 13),
                                          ),
                                          const SizedBox(width: 60,),
                                          const Icon(
                                            Icons.bakery_dining_rounded,
                                            size: 25,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 10),
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
                                  onPressed: () => {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Reciepe(value : jsonData[i+1]["Name"])))
                                      },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 124,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Food/"+jsonData[i+1]['image']+".png"),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
                                        child: Text(
                                          jsonData[i+1]["Name"],
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  138, 138, 138, 1)),
                                        ),
                                      ),
                                      
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Text(
                                            jsonData[i+1]["Calories"]+" Cal",
                                            style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 130, 5, 1),
                                                fontSize: 13),
                                          ),
                                          const SizedBox(
                                            width: 60,
                                          ),
                                          const Icon(
                                            Icons.bakery_dining_rounded,
                                            size: 25,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 10,)
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
                                            MaterialPageRoute(builder: (context) => Reciepe(value : jsonData[number-1]["Name"])))
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 124,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Food/"+jsonData[number-1]['image']+".png"),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                                        child: Text(
                                          jsonData[number-1]["Name"],
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  138, 138, 138, 1)),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Text(
                                            jsonData[number-1]["Calories"]+"Cal",
                                            style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 130, 5, 1),
                                                fontSize: 13),
                                          ),
                                          const SizedBox(
                                            width: 60,
                                          ),
                                          const Icon(
                                            Icons.bakery_dining_rounded,
                                            size: 25,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 10,)
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        )
                    ],
                  );
                }
              }),
        ],
      ),
    );
  }

  Future<List<dynamic>> jsonLength() async {
    String jsonString = await rootBundle.loadString('assets/Recipes.json');
    jsonData = json.decode(jsonString);
    number = jsonData.length;
    return jsonData;
  }
}
