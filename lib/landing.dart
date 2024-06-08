import "package:flutter/material.dart";
import "dart:async";

import "package:gym_app/about.dart";

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }
  void _navigateToNextPage() {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const about()),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Text(
                "GN Gym",
                style: TextStyle(
                  color: const Color.fromRGBO(244, 206, 20, 100),
                  fontFamily: "PoetsenOne",
                  fontSize: MediaQuery.of(context).size.width * 0.12,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              const CircularProgressIndicator(
                color: Color.fromRGBO(244, 206, 20, 100),
                backgroundColor: Color.fromRGBO(30, 30, 30, 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
