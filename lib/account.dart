import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  String name = "";
  String email = "";
  String goal = "";
  String activity = "";

  @override
  Widget build(BuildContext context) {
    getCookie();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Account",
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
          SizedBox(height: 30),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.contain)),
          ),
          SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Full Name",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 57,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(30, 30, 30, 1),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: TextFormField(
                  initialValue: name.toString(),
                  onChanged: (value) {
                    setCookie("full_name", value);
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: "New usr name",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                )),
          ),
          SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 57,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(30, 30, 30, 1),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: TextFormField(
                  initialValue: email.toString(),
                  onChanged: (value) {
                    setCookie("Email", value);
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: "Test@gmail.com",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                )),
          ),
          SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Goal (gain weight , improve endurance , lose weight)",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 57,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(30, 30, 30, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: TextFormField(
                initialValue: goal.toString(),
                onChanged: (value) {
                  if (value.toLowerCase() != "gain weight" &&
                      value.toLowerCase() != "lose weight" &&
                      value.toLowerCase() != "improve endurance") {
                    const Center(
                      child: Text(
                        "Please enter one of the following goals: gain weight, lose weight, or improve endurance",
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  } else {
                    setCookie("value1", capitalizePhrase(value));
                    setCookie("value2", value.toLowerCase());
                  }
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.edit,
                    size: 25,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "New goal here",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Activity Level",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 57,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(30, 30, 30, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 5, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      value: activity,
                      onChanged: (String? newValue) {
                        setState(() {
                          activity = newValue.toString();
                          setCookie("activity", activity);
                        });
                      },
                      iconEnabledColor: Colors.transparent,
                      iconDisabledColor: Colors.transparent,
                      underline: SizedBox.shrink(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      dropdownColor: Colors.black,
                      items: <String>['Beginner', 'Medium', 'Advanced']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String capitalizePhrase(String phrase) {
    if (phrase.isEmpty) {
      return phrase;
    }

    List<String> words = phrase.split(' ');
    List<String> capitalizedWords = [];

    for (String word in words) {
      if (word.isNotEmpty) {
        capitalizedWords.add(word[0].toUpperCase() + word.substring(1));
      } else {
        capitalizedWords.add(word);
      }
    }

    return capitalizedWords.join(' ');
  }

  Future<void> setCookie(String attribute, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(attribute, value);
    print(prefs.getString(attribute));
  }

  Future<void> getCookie() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("full_name").toString();
      email = prefs.getString("Email").toString();
      goal = prefs.getString("value1").toString();
      if (prefs.getString("activity") == "Beginner") {
        activity = "Beginner";
      } else if (prefs.getString("activity") == "Medium") {
        activity = "Medium";
      } else {
        activity = "Advanced";
      }
    });
  }
}
