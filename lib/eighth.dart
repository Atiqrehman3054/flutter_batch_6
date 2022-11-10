import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/secondday.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({super.key});

  @override
  State<EightScreen> createState() => _EightScreenState();
}

class _EightScreenState extends State<EightScreen> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          fixsizeheight12,
          Card(
            elevation: 0.9,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.grey.shade400,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Show Student data",
                    style: TextStyle(fontSize: 21),
                  ),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: Icon(
                        isvisible == true
                            ? Icons.arrow_circle_up_outlined
                            : Icons.arrow_circle_down_sharp,
                        size: 30,
                        color: isvisible == true ? Colors.green : Colors.red,
                      )),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  customRow(Data: "Majeed", title: "Name"),
                  customRow(Data: "5.6", title: "Height"),
                  customRow(Data: "Iqra", title: "University"),
                  customRow(Data: "23", title: "Age", indent: 59),
                ]),
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  customRow(Data: "Majeed", title: "Name"),
                  customRow(Data: "5.6", title: "Height"),
                  customRow(Data: "Iqra", title: "University"),
                  customRow(Data: "23", title: "Age", indent: 59),
                ]),
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  customRow(Data: "Majeed", title: "Name"),
                  customRow(Data: "5.6", title: "Height"),
                  customRow(Data: "Iqra", title: "University"),
                  customRow(Data: "23", title: "Age", indent: 59),
                ]),
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  customRow(Data: "Majeed", title: "Name"),
                  customRow(Data: "5.6", title: "Height"),
                  customRow(Data: "Iqra", title: "University"),
                  customRow(Data: "23", title: "Age", indent: 59),
                ]),
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  customRow(Data: "Majeed", title: "Name"),
                  customRow(Data: "5.6", title: "Height"),
                  customRow(Data: "Iqra", title: "University"),
                  customRow(Data: "23", title: "Age", indent: 59),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Column customRow(
      {required String title, required String Data, double? indent}) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                "$title:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            // fixsizewidth12,
            Expanded(
              flex: 6,
              child: Text(
                Data,
                style: TextStyle(color: Colors.brown, fontSize: 18),
              ),
            )
          ],
        ),
        Divider(
          color: black_color,
          indent: indent,
          endIndent: 20,
          thickness: 2,
        ),
        fixsizeheight12
      ],
    );
  }
}
