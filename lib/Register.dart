import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.1),
        const Text(
          "Tell Us About Yourself",
          style: TextStyle(
            decoration:TextDecoration.none,
            fontFamily: "Poppins",
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 0), 
          child :Text(
            "Here you should tell us your genre if you're a Male or Female for better plans scheduling",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: "Medium",
              fontSize: 18,
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height:25),
        Container(
          height: 220,
          width: 220,
          decoration: const BoxDecoration(color: Color.fromRGBO(244, 206, 20, 1), shape: BoxShape.circle),
          child: 
          const Center( 
            child : ElevatedButton(
              onPressed: null,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.male, color: Colors.black, size: 100),
                    Text(
                      "Male",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ]
                ),
              )),
          ),
        ),
        const SizedBox(height:33),
        Container(
          height: 220,
          width: 220,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(20, 30, 30, 1), shape: BoxShape.circle),
          child: const ElevatedButton(
              onPressed: null,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.female, color: Colors.white, size: 100),
                  Text(
                    "Female",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ]),
              )),
        ),
        const SizedBox(height:33),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:52 ,
              width: 159,
              child: ElevatedButton(
                onPressed: () =>{},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(82, 81, 76, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
                child:  const Text(
                  "< Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 20
                  )
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            Container(
              height:52 ,
              width: 159,
              child: ElevatedButton(
                onPressed: () =>{},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(244, 206, 20, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
                child:  const Text(
                  "Next >",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 20
                  )
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
