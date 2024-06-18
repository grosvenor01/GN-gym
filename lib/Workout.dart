import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'dart:convert';

class Workout extends StatefulWidget {
  const Workout({super.key});
  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  double water_progress = 20;
  double workout_progress = 20;
  final goal = "Gain Weight";
  final goal2 = "gain weight";
  final day = DateTime.now().weekday;
  var selection;
  int number = 0;
  var _ischecked = [];
  @override
  void initState() {
    super.initState();
    _ischecked = List.generate(8, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Workout Plans",
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
      body: FutureBuilder(
        future: Get_json_Workout(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Center(child: Text("Loading Error"));
          } else {
            switch (day) {
              case 1:
                selection = 0;
                break;
              case 3:
                selection = 1;
                break;
              case 5:
                selection = 2;
                break;
              case 7:
                selection = 3;
                break;
              case 2:
              case 4:
              case 6:
                selection = -1;
            }
            final jsondata =
                snapshot.data!.where((dict) => dict["Goal"] == goal);
            final Name;
            final choosed;
            if (selection >= 0) {
              choosed = jsondata.first["Workouts"][selection]["Exercises"];
              Name = jsondata.first["Workouts"][selection]["Day"];
            } else {
              choosed = null;
              Name = "";
            }
            return ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26),
                  child: Text(
                    "Day number : $day / " + Name,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 26),
                if (choosed == null)
                  const Center(
                    child: Text(
                      "No Workout Today",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Poppins",
                          color: Colors.white),
                    ),
                  )
                else
                  for (int i = 0; i < choosed.length; i++)
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.99,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _ischecked[i] = _ischecked[i] == false;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Workout/$goal2/day1_${i + 1}.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.65,
                                          margin: EdgeInsets.only(top: 5),
                                          child: CheckboxListTile(
                                            title: Text(
                                              choosed[i]["Name"],
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            value: _ischecked[i],
                                            onChanged: (value) {
                                              setState(() {
                                                _ischecked[i] = value!;
                                              });
                                            },
                                            activeColor:
                                                Color.fromRGBO(244, 206, 20, 1),
                                            checkColor: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Sets : 4x12",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                138, 138, 138, 1)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Weight : 25kg",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                138, 138, 138, 1)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                SizedBox(height: 26),
              ],
            );
          }
        },
      ),
    );
  }

  Future<List<dynamic>> Get_json_Workout() async {
    String JsonString = await rootBundle.loadString("assets/Workout.json");
    var jsonData = jsonDecode(JsonString);
    number = jsonData.length;
    return jsonData;
  }
}
