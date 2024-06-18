import "package:flutter/material.dart";
import "package:gym_app/Routines.dart";
import "package:gym_app/Workout.dart";
import "package:gym_app/food.dart";
import "package:gym_app/learning.dart";
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

class nav extends StatefulWidget {
  nav({super.key});
  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int current = 0;
  var image;
  double iconSize = 24.0;
  String? value1;
  String? value2;
  @override
  Widget build(BuildContext context) {
    setCookie();
    var screens = [
      Routines(),
      food(),
      null,
      Workout(value1: value1.toString(), value2: value2.toString()),
      Learning()
    ];
    return Scaffold(
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
            iconSize = index == current ? 32.0 : 24.0;
          });
        },
        selectedItemColor: Color.fromRGBO(244, 206, 20, 1),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.restaurant_menu,
              size: 32,
            ),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc_sharp,
              size: 0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.fitness_center,
              size: 32,
            ),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.school,
              size: 32,
            ),
            label: 'Learning',
          ),
        ],
      ),
      floatingActionButton: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: FloatingActionButton(
          onPressed: () {
            pick_image_camera();
          },
          shape: const CircleBorder(),
          backgroundColor: const Color.fromRGBO(244, 206, 20, 1),
          child: const Icon(
            Icons.camera,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Future pick_image_camera() async {
    final returnedpic =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedpic == null) return;
    setState(() {
      image = File(returnedpic.path);
    });
  }

  Future<void> setCookie() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('has_completed_registration', true);
  }

  Future<void> getCookie() async {
    final prefs = await SharedPreferences.getInstance();
    value1 = await prefs.getString("value1");
    value2 = await prefs.getString("value2");
  }
}
