import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter_animate/flutter_animate.dart';
import "package:gym_app/account.dart";

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  double water_progress = 20;
  double workout_progress = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Daily Routine",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 20, color: Colors.white),
        ),
        actions: [
          ElevatedButton(
            onPressed: ()=>{
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> account())
              )
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent
            ),
            child: const Icon(
              Icons.more_horiz,
              size: 21,
              color: Colors.white,
            ),
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
              "Food and Nurration",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, top: 5),
            child: Text(
              "We display a fully information about \nfood plans here.",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 10, color: Colors.grey),
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Meals",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Completed",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Carbs Needed",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Perfect",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Proteine Needed",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Perfect",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Sugar",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Unhealthy",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Calories",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Too Hight",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Rate",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 13, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 26, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                  color: Color.fromRGBO(244, 206, 20, 1),
                  value: 0.8,
                  minHeight: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Greate",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
