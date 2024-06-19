import 'package:flutter/material.dart';
import 'package:gym_app/Register6.dart';
import 'package:gym_app/nav.dart';
import 'dart:io'; // FOR ACCESSING AND FILE MANIPULATION
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart'; 
import 'package:shared_preferences/shared_preferences.dart';

class Register7 extends StatefulWidget {
  const Register7({super.key});
  @override
  State<Register7> createState() => _Register7State();
}

class _Register7State extends State<Register7> {
  var slectedIndex;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  const Text(
                    "Full Your Profile",
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
                      "Finalising your profile by giving your information bellow ",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: "Medium",
                        fontSize: 18,
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 110,
                    height: 110,
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/background.png'),
                        ),
                        Positioned(
                          bottom: -2,
                          right: -2,
                          child: FloatingActionButton(
                            mini: true,
                            backgroundColor: Color.fromRGBO(244, 206, 20, 1),
                            onPressed: () {
                              //faut nzidou wach ysra ki y3abez
                              pick_image_gallery();
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(left: 10 , top: 5),
                      child : TextField(
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        onChanged: (value) => {
                          setCookie("full_name",value)
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Full Name",
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Color.fromRGBO(138, 138, 138, 1)
                          )
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(left: 10 , top: 5),
                      child : TextField(
                        style: const TextStyle(
                          color: Colors.white
                        ),
                         onChanged: (value) => {
                          setCookie("Email",value)
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Color.fromRGBO(138, 138, 138, 1)
                          )
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:const Padding(
                      padding: EdgeInsets.only(left: 10 , top: 5),
                      child : TextField(
                        style:TextStyle(
                          color: Colors.white
                        ),
                         
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Color.fromRGBO(138, 138, 138, 1)
                          )
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(30, 30, 30, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (value) => print(value),
                      textStyle: TextStyle(
                        color: Colors.white
                      ),
                      selectorTextStyle: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Color.fromRGBO(138, 138, 138, 1)
                      ),
                      inputBorder: InputBorder.none,
                      initialValue: PhoneNumber(isoCode: "DZ"),
                      inputDecoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '123456789',
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          color: Color.fromRGBO(138, 138, 138, 1),
                          fontSize: 15,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 5,
                        ),
                      ),
                      

                    ),
                    
                  ),
                ])),
                
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 52,
                  width: 159,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register6()))
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
                              builder: (context) => nav()))
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
        ));
  }

  Future<void> setCookie(String attribute , String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(attribute, value);
    print(prefs.getString(attribute));
  }

  Future pick_image_gallery() async {
    final returnedpic =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedpic == null) return;
    setState(() {
      image = File(returnedpic!.path);
    });
  }
}
