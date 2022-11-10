import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';

class SeventhScreen extends StatefulWidget {
  SeventhScreen({super.key});

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  int Count = 0;
  bool single = true;

  List<String> all_student = [
    "student_no_1",
    "student_no_2",
    "student_no_3",
    "student_no_4",
    "student_no_5",
    "student_no_6",
    "student_no_7",
    "student_no_8",
    "student_no_9",
    "student_no_10",
  ];

  // Function() increment = () {
  @override
  Widget build(BuildContext context) {
    print("rebuild all pagee");
    return Scaffold(
      appBar: AppBar(
        title: Text("increment"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            fixsizeheight12,
            Text(
              "Student_name \n ${all_student[Count]}",
              style: TextStyle(fontSize: 30),
            ),
            fixsizeheight12,
            Align(
              alignment: Alignment.center,
              child: Text(
                "increment value  $Count",
                style: TextStyle(fontSize: 30),
              ),
            ),
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            single == true
                ? Container(
                    height: 100,
                    width: 100,
                    color: Colors.amberAccent,
                  )
                : Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Count++;
                    // single = false;
                  });

                  print("print the count value $Count");
                },
                child: Text("Click me"))
          ]),
    );
  }
}
