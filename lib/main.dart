import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/ForthDay.dart';
import 'package:flutter_ui_batch_6/ThiridDay.dart';
import 'package:flutter_ui_batch_6/fifthday.dart';
import 'package:flutter_ui_batch_6/secondday.dart';

import 'firstday.dart';
// import 'package:flutter_ui_batch_6/firstday.dart';

main() {
  runApp(const FirstClass());
}

String name = firstdata;

class FirstClass extends StatelessWidget {
  const FirstClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FifthScreen(),
      // theme: ,
      // ForthScreen(),
      title: "flutter_ui",
    );
  }
}
