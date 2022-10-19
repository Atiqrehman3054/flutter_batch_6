import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/ThiridDay.dart';
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
      home: ThridScreen(titledata: "ThridScreen"),
      title: "flutter_ui",
    );
  }
}
