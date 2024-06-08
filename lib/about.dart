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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text("Welcome to 👋",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25,
                          color: Colors.white))),
              const SizedBox(height: 3),
              const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text("GN Gym",
                      style: TextStyle(
                          fontFamily: "PoetsenOne",
                          fontSize: 50,
                          color: Color.fromRGBO(244, 206, 20, 1)))),
              const SizedBox(height: 12),
              const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                      "' Exercise is king. Nutrition is queen. Put them together and you've got a kingdom. '",
                      style: TextStyle(
                          fontFamily: "Poppins-Medium",
                          fontSize: 18,
                          color: Color.fromARGB(255, 192, 192, 192)))),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 64,
                  margin: EdgeInsets.only(left: 32, top: 20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(244, 206, 20, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Register()));
                            
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(244, 206, 20, 1),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
                      ),
                      child: const Center(
                          child: Text(
                            "Sign Up Now >",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 20,
                            ),
                          )
                      )
                  )
                )
            ],
          ),
        ),
      ),
    );
  }
}
