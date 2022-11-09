//listtile
//circleaVart
//iconbuttom
//spacer
//card

import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/ForthDay.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              //spacer
              // customcontainer(),
              // customcontainer(),
              // Spacer(flex: 7),
              // customcontainer(),
              // Spacer(flex: 3),
              fixsizeheight12,
              CircleAvatar(
                backgroundColor: Colors.green,

                radius: 10,
                // child: ,
              ),
              fixsizeheight12,
              custom_circler_avatar(image: "assets/Images/image (4).jpg"),
              fixsizeheight12,
              CircleAvatar(
                backgroundImage: AssetImage("assets/Images/image (1).png"),
                backgroundColor: Colors.amber,
                radius: 70,
              ),
              ListTile(
                // contentPadding: EdgeInsets.zero,
                leading:
                    custom_circler_avatar(image: "assets/Images/image (4).jpg"),
                title: Text("FLutter"),
                tileColor: Colors.amber,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("batch#6"),
                    Text("batch#6"),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    print("jsut call him");
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.red,
                  ),
                  // highlightColor: Colors.green,
                  focusColor: Colors.amber,
                  padding: EdgeInsets.zero,
                  hoverColor: Colors.red,
                  color: Colors.blueAccent,
                  splashColor: Colors.amber,
                  tooltip: "this is",
                ),
                onLongPress: () {
                  print("longg pressedd");
                },
                onTap: () {
                  print("go to next screeen");
                },
              ),

              // Row(
              //   children: [
              //     custom_circler_avatar(image: "assets/Images/image (4).jpg"),
              //     Column(
              //       children: [
              //         Text("FLutter"),
              //         Text("batch"),
              //       ],
              //     ),
              //     Spacer(),
              //     Icon(Icons.call),
              //   ],
              // ),
            ]),
      ),
    );
  }

  CircleAvatar custom_circler_avatar({String? image}) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      backgroundImage: AssetImage(image!),
      radius: 40,
      // child: Icon(
      //   Icons.add_a_photo,
      //   color: Colors.white,
      //   size: 30,
      // ),
    );
  }
}
