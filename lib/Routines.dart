import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:gym_app/account.dart";

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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Daily Routine",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: screenWidth*0.06, color: Colors.white),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => account()))
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
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
          Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "Progress",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: screenWidth*0.04, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26, top: 5),
            child: Text(
              "We display a fully information about \nyour progress here.",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: screenWidth*0.03, color: Colors.grey),
            ),
          ),
          SizedBox(height: 26),
          Row(
            children: [
              const SizedBox(
                width: 26,
              ),
              Container(
                height: screenHeight*0.30,
                width: screenWidth*0.43,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Drink 8 cups (64 oz or 1.9 liters) of water per day for optimal health or more if needed.",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: screenHeight*0.30,
                width: screenWidth*0.43,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Aim for 30 minutes of moderate exercise daily.Or follow our Workout plans (3-4days per week)",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,)
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
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
                height: screenHeight*0.30,
                width: screenWidth*0.43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Your daily meals are calculated here to make you more in touch with your day ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: screenHeight*0.30,
                width: screenWidth*0.43,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(38, 38, 38, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Try our meals recommandation  for better carbs and healthy meals , or just just buy it ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Color.fromRGBO(138, 138, 138, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,)
            ],
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
