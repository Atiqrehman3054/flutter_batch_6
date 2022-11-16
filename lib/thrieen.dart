import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';
import 'package:flutter_ui_batch_6/firstday.dart';
import 'package:flutter_ui_batch_6/main.dart';
import 'package:flutter_ui_batch_6/secondday.dart';

pagefunction({required Widget screenname, required BuildContext context}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screenname));
}

class ThriteenScreen extends StatelessWidget {
  const ThriteenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      // pagefunction(screenname: SecondDay(), context: context);
                      Navigator.pushNamed(context, allpages[1]);
                    },
                    child: Text(
                      "FirstPage",
                      style: custom,
                    ),
                  ),
                  fixsizeheight12,
                ],
              ),
            )));
  }
}
