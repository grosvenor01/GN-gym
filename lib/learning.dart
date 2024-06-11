import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
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
          Row(
            children: [
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
                      children: [
                        Container(
                          height: 124,
                          width: 160,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/plat1.png"),
                                  fit: BoxFit.cover)),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
