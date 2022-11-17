import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/ThiridDay.dart';
import 'package:flutter_ui_batch_6/animation.dart';
import 'package:flutter_ui_batch_6/secondday.dart';
import 'package:flutter_ui_batch_6/tenth.dart';
import 'package:google_fonts/google_fonts.dart';

class FifteenScreen extends StatefulWidget {
  const FifteenScreen({super.key});

  @override
  State<FifteenScreen> createState() => _FifteenScreenState();
}

class _FifteenScreenState extends State<FifteenScreen> {
  int current_index = 1;
  List<Widget> allScreen = [
    ThridScreen(titledata: "thridscreen"),
    FourteenSreen(),
    TenthScreen(),
    SecondDay(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: allScreen[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: ((index) {
          setState(() {
            current_index = index;
          });
        }),
        backgroundColor: Colors.amber,
        // elevation: 40
        iconSize: 40,
        // selectedItemColor: Colors.red,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 20,
        ),
        fixedColor: Colors.green,
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(color: Colors.green),
        // showSelectedLabels: ,
        // showUnselectedLabels: false,
        // unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              tooltip: "Phone",
              icon: Icon(
                Icons.phone,
                // color: current_index == 0 ? Colors.green : Colors.black,
              ),
              label: "Phone"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Colors.black,
              ),
              label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Colors.black,
              ),
              label: "contact"),
        ],
      ),
    ));
  }
}
