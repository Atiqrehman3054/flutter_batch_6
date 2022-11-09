import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';

class SixthScreen extends StatelessWidget {
  SixthScreen({super.key});

  Function() gesterFun = () {
    print("outside pass fun");
  };
  Function() Onpress = () {
    print("outside pass textbutton");
  };

  TextStyle customstyle = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Scaffold(
          body: Column(children: [
            //gesterdec
            fixsizeheight12,
            GestureDetector(
              onTap: () {
                print("gesturedetector");
                gesterFun();
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            fixsizeheight12,
            fixsizeheight12,

            InkWell(
              onTap: () {
                print("inkwell");
              },
              child: Text(
                "Inkwell",
                style: customstyle,
              ),
            ),
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            MaterialButton(
              onPressed: () {
                print("material");
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "MaterialButton",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              color: Colors.amber,
              colorBrightness: Brightness.dark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            TextButton(
                style: ButtonStyle(alignment: Alignment.topRight),
                onPressed: Onpress,
                child: Text(
                  "TextButton",
                  style: customstyle.copyWith(color: Colors.amber),
                )),

            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,

            IconButton(
                padding: EdgeInsets.zero,
                onPressed: Onpress,
                icon: Icon(
                  Icons.add,
                  size: 30,
                )),

            ElevatedButton(
              onPressed: () {},
              child: Text("ElevatedButton"),
            ),
          ]),
        ),
      ),
    );
  }
}
