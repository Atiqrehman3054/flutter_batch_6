import 'package:flutter/material.dart';

String _firstdata = "student";
String firstdata = "student";

class FirstDay extends StatelessWidget {
  FirstDay({super.key});
  String firstdata = "hii this is first class";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text(_firstdata)),
      ),
    );
  }
}

String name = _firstdata;
