import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter/widgets.dart";
import 'dart:convert';

class Reciepe extends StatelessWidget {
  final String value;
  Reciepe({
    Key? key,
    required this.value,
  }) : super(key: key);
  var jsonData = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Get_json_data(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error Occured"),
            );
          } else {
            final data = snapshot.data!.where((dict) => dict["Name"] == value);
            final ingredients = data.first["Ingredients"];
            String ing = "";
            int index = 1;
            ingredients.forEach((key, value) {
              if (value is Map) {
                // Nested 'dressing' or similar structure
                ing += '$index. $key:\n';
                index++;
                int nestedIndex = 1;
                value.forEach((nestedKey, nestedValue) {
                  ing += '  $nestedIndex. $nestedKey : $nestedValue\n';
                  nestedIndex++;
                });
              } else {
                // Simple key-value pair
                ing += '$index. $key : $value\n';
                index++;
              }
            });
            return Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.black,
                iconTheme: const IconThemeData(color: Colors.white),
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
              body: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Food/"+data.first["image"]+".png"),
                        fit: BoxFit.cover)
                    ),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: ListView(
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(data.first["Name"],
                                style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22,
                                    color: Colors.black)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            
                            const Icon(Icons.alarm,color: Colors.red, size: 40),

                            Text(data.first["Time"],
                                style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black)),
                            
                            const Icon(Icons.local_fire_department_sharp,
                                color: Colors.orange, size: 40),
                            Text(data.first["Calories"] + " cal",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black)),
                            
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 40,
                            ),
                            Text("${data.first["Rate"]}",
                                style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black)),
                            
                          ]),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              data.first["Description"],
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text("Ingredients",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 22,
                                    color: Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20),
                            child: Text(
                              ing,
                              style: TextStyle(
                                fontFamily: "Medium",
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                      height: MediaQuery.of(context)
                          .size
                          .height), // to make the positionned widget work correctly
                  
                ],
              ),
            );
          }
        });
  }

  Future Get_json_data() async {
    String jsonString = await rootBundle.loadString("assets/Recipes.json");
    jsonData = json.decode(jsonString);
    return jsonData;
  }
}
