import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Routines extends StatefulWidget {
  const Routines({super.key});

  @override
  State<Routines> createState() => _RoutinesState();
}

class _RoutinesState extends State<Routines> {
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
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Progress",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, top: 5),
            child: Text(
              "We display a fully information about \nyour progress here.",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 10, color: Colors.grey),
            ),
          ),
          SizedBox(height: 26),
          Row(
            children: [
              const SizedBox(
                width: 26,
              ),
              Container(
                height: 193,
                width: 166,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      width: 54,
                      margin: EdgeInsets.only(top: 20, left: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(0, 117, 225, 1)),
                      child: Icon(
                        Icons.water_drop_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Daily water",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet  consectetur ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 117, 225, 1),
                            value: 0.8,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "80%",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 193,
                width: 166,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      width: 54,
                      margin: EdgeInsets.only(top: 20, left: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 0, 0, 1)),
                      child: Icon(
                        Icons.fitness_center,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Daily Workout",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet  consectetur ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255, 0, 0, 1),
                            value: 0.8,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "80%",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
          
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Food & Learning",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, top: 5),
            child: Text(
              "We display a fully information about \nyour daily learning & food",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 10, color: Colors.grey),
            ),
          ),
          SizedBox(height: 26),
          Row(
            children: [
              SizedBox(
                width: 26,
              ),
              Container(
                height: 193,
                width: 166,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      width: 54,
                      margin: EdgeInsets.only(top: 20, left: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(244, 206, 20, 1)),
                      child: Icon(
                        Icons.no_food_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Food Meals",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet  consectetur ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(244, 206, 20, 1),
                            value: 0.8,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "80%",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 193,
                width: 166,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      width: 54,
                      margin: EdgeInsets.only(top: 20, left: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(0, 130, 5, 1)),
                      child: Icon(
                        Icons.menu_book_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Learning",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet  consectetur ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(138, 138, 138, 50),
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 130, 5, 1),
                            value: 0.8,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "80%",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              )
            ],
          )
        
        ],
      ),
    );
  }
}
