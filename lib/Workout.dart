import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  double water_progress = 20;
  double workout_progress = 20;
  List<bool?> _ischecked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Workout Plans",
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
              "Chest Day / First Month",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[0] = _ischecked[0] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[0],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[0] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[1] = _ischecked[1] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[1],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[1] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[2] = _ischecked[2] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[2],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[2] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[3] = _ischecked[3] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[3],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[3] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[4] = _ischecked[4] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[4],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[4] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[5] = _ischecked[5] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[5],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[5] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 26),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => {
                  setState(() {
                    _ischecked[1] = _ischecked[1] == false;
                  })
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      width: 68,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.65,
                              margin: EdgeInsets.only(top: 5),
                              child: CheckboxListTile(
                                title: const Text("Bench Press",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      color: Colors.white,
                                    )),
                                value: _ischecked[1],
                                onChanged: ((bool? value) => setState(() {
                                      _ischecked[1] = value != false;
                                    })),
                                activeColor: Color.fromRGBO(244, 206, 20, 1),
                                checkColor: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sets : 4x12",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Weight : 25kg (without bar)",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Pause : 00:01:30",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
