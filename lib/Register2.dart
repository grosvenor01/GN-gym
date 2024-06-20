import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';
import 'package:gym_app/Register3.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  var slectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.9,
            
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                "What Is Your Age",
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
                  "Here you should tell us your Age for better plans scheduling",
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
                  children: List.generate(96, (index) {
                    return Center(
                        child: Text(
                      "${index + 5}", // Adjust the starting index to 5
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
                      MaterialPageRoute(builder: (context) => const Register()))
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
                          builder: (context) => const Register3()))
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
