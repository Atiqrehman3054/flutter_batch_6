import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';

class ThridScreen extends StatelessWidget {
  ThridScreen({required this.titledata, super.key});

  String titledata;
  String imagename = "assets/Images/event1.png";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(titledata),
      ),
      body: Column(
        children: [
          fixsizeheight12,
          Text("Name: Futter batch6"),
          fixsizeheight12,
          Text("Name: Futter batch6"),
          fixsizeheight12,
          Text("Name: Futter batch6"),
          fixsizeheight12,
          Text("Name: Futter batch6"),
          fixsizeheight12,
          Text("Name: Futter batch6"),
          fixsizeheight12,
          Text(
            "this is width $width ${width / 3.8}",
            style: TextStyle(fontSize: 30.0),
          ),
          fixsizeheight12,
          Text(
            " screen height $height ",
            style: TextStyle(fontSize: 30.0),
          ),
          fixsizeheight12,
          // Container(
          //   height: height / 6,
          //   width: width / 3.8,
          //   decoration: BoxDecoration(
          //     color: Colors.blueAccent,
          //     border: Border.all(
          //       width: 3.0,
          //       color: Colors.black,
          //     ),
          //     borderRadius: BorderRadius.circular(15.0),
          //   ),
          //   child: Icon(
          //     Icons.add_a_photo,
          //     size: 40,
          //   ),
          // ),
          Container(
              height: height / 6,
              width: width / 3.8,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  width: 3.0,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.asset(
                imagename,
                fit: BoxFit.cover,
              )),

          // Image.asset(
          //   "assets/Images/event1.png",
          //   height: height / 7,
          //   width: 500,
          // )
        ],
      ),
    );
  }
}
