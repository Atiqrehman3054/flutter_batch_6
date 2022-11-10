import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';

class NinthScreen extends StatelessWidget {
  NinthScreen({super.key});

  List<String> all_name = [
    "majeed",
    "sami ur rehman",
    "zeshaan",
    "asad",
    "majeed",
    "sami ur rehman",
    "zeshaan",
    "asad",
    "majeed",
    "sami ur rehman",
    "zeshaan",
    "asad",
    "majeed",
    "sami ur rehman",
    "zeshaan",
    "asad",
    "majeed",
    "sami ur rehman",
    "zeshaan",
    "asad",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: all_name.length,
                itemBuilder: (context, asif) {
                  return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.green,
                      height: 200,
                      width: double.infinity,
                      child: Text(
                        all_name[asif],
                        style: TextStyle(color: Colors.white),
                      ));
                }),

            ///////////////////////////////
            ///first way
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: all_name.length,
                  itemBuilder: (context, asif) {
                    return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.green,
                        height: 200,
                        width: double.infinity,
                        child: Text(
                          all_name[asif],
                          style: TextStyle(color: Colors.white),
                        ));
                  }),
            ),
            // fixsizeheight12,
            // fixsizeheight12,
            // fixsizeheight12,
            // fixsizeheight12,
            // //second way
            // Expanded(
            //   flex: 3,
            //   child: ListView.builder(
            //       itemCount: all_name.length,
            //       itemBuilder: (context, asif) {
            //         return Container(
            //             alignment: Alignment.center,
            //             margin: EdgeInsets.only(top: 10),
            //             color: Colors.green,
            //             height: 200,
            //             width: double.infinity,
            //             child: Text(
            //               all_name[asif],
            //               style: TextStyle(color: Colors.white),
            //             ));
            //       }),
            // )
          ],
        ),
      ),
    ));
  }
}
