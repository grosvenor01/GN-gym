import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class Reciepe extends StatelessWidget {
  const Reciepe({super.key});

  @override
  Widget build(BuildContext context) {
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
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 20, top: 100),
                    child: const Text("Chiken machwi with chlada",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 22,
                            color: Colors.black)),
                  ),
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.alarm, color: Colors.red, size: 40),
                    const Text("30min",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.black)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Icon(Icons.local_fire_department_sharp,
                        color: Colors.orange, size: 40),
                    const Text("300 cal",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.black)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 40,
                    ),
                    const Text("4.5",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.black)),
                    const SizedBox(
                      width: 20,
                    ),
                  ]),

                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua. \nUt enim ad minim veniam, quis nostrud\nexercitation ullamco laboris nisi ut aliquip ex\nea commodo consequat.",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text("Ingredients",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 22,
                            color: Colors.black)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20),
                    child: Text(
                      "1. Djaj (Scalope)\n2.Makaroun\n3.Tomatich\n4.Toum\n5.Sel",
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
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 2 - 125,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/plat2.png"), fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
