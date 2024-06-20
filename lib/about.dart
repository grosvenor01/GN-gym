import 'package:flutter/material.dart';
import 'package:gym_app/Register.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.60),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Text("Welcome to 👋",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.06,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Text("GN Gym",
                    style: TextStyle(
                      fontFamily: "PoetsenOne",
                      fontSize: screenWidth * 0.12,
                      color: const Color.fromRGBO(244, 206, 20, 1),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Text(
                  "' Exercise is king. Nutrition is queen. Put them together and you've got a kingdom. '",
                  style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: screenWidth * 0.045,
                    color: const Color.fromARGB(255, 192, 192, 192),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.8,
                margin: EdgeInsets.only(
                    left: screenWidth * 0.08, top: screenHeight * 0.04),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(244, 206, 20, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(244, 206, 20, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up Now >",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
