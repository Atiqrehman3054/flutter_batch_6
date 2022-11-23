import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/ForthDay.dart';
import 'package:flutter_ui_batch_6/HelpingFile/sixth.dart';
import 'package:flutter_ui_batch_6/ThiridDay.dart';
import 'package:flutter_ui_batch_6/animation.dart';
import 'package:flutter_ui_batch_6/eighth.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';
import 'package:flutter_ui_batch_6/fifteen.dart';
import 'package:flutter_ui_batch_6/fifthday.dart';
import 'package:flutter_ui_batch_6/ninteen.dart';
import 'package:flutter_ui_batch_6/ninthScreen.dart';
import 'package:flutter_ui_batch_6/secondday.dart';
import 'package:flutter_ui_batch_6/seventeen.dart';
import 'package:flutter_ui_batch_6/seventh.dart';
import 'package:flutter_ui_batch_6/sixteen.dart';
import 'package:flutter_ui_batch_6/tenth.dart';
import 'package:flutter_ui_batch_6/thrieen.dart';
import 'package:flutter_ui_batch_6/tweleth.dart';
import 'package:flutter_ui_batch_6/twenty.dart';
import 'package:get/get.dart';
// import 'package:flutter_ui_batch_6/an';

import 'darwer.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ThriteenScreen(),2
      initialRoute: 'Future',
      routes: {
        "/": (context) => const ThriteenScreen(),
        "firstscreen": (context) => FirstDay(),
        "secondscreen": (context) => SecondDay(),
        "thridscreen": (context) => ThridScreen(titledata: "add"),
        "Animation": (context) => FourteenSreen(),
        "Bottomnavigation": (context) => FifteenScreen(),
        "lifecyclewidget": (context) => SixteenScreen(name: "Atiq rehman"),
        "Tabbar": (context) => Seventeen(),
        "Drawer": (context) => EighteenScreen(),
        "popups": (context) => NinteenScreen(),
        "Future": (context) => Async_await(),
      },
      // TwelethScreen(),
      // EleventhScreen(),
      // TenthScreen(),
      //  NinthScreen(),
      // EightScreen(),
      //  SixthScreen(),
      // theme: ,
      // ForthScreen(),
      title: "flutter_ui",
    );
  }
}

List<String> allpages = [
  "firstscreen",
  "secondscreen",
  "thridscreen",
];
