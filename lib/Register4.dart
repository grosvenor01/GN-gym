import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register3.dart';
import 'package:gym_app/Register5.dart';

class Register4 extends StatefulWidget {
  const Register4({super.key});

  @override
  State<Register4> createState() => _Register4State();
}

class _Register4State extends State<Register4> {
  var slectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Text(
                "What Is Your Height",
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
                  "Here you should tell us your Height for better plans scheduling",
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
                height: MediaQuery.of(context).size.height * 0.60,
                child: CupertinoPicker(
                  itemExtent: 80,
                  onSelectedItemChanged: (int value) => {
                    setState(() {
                      slectedIndex = value;
                    })
                  },
                  useMagnifier: true, // Enable magnifier effect
                  magnification: 2, // Adjust the magnification level as desired
                  squeeze: 1, // Set the number of items to display at a time
                  scrollController: FixedExtentScrollController(
                    initialItem: 7, // Set the initial selected item
                  ),
                  children: List.generate(150, (index) {
                    return Center(
                        child: Text(
                      "${index + 140}", // Adjust the starting index to 5
                      style: TextStyle(
                        color: slectedIndex == index
                            ? Color.fromRGBO(244, 206, 20, 1)
                            : Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 40,
                      ),
                    ));
                  }),
                ),
              ),
            ])
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 52,
              width: 159,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Register3()))
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
                          builder: (context) => const Register5()))
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
}
