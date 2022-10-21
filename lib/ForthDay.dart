import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/ThiridDay.dart';

//networkimage
//row
//colum
//expended
//flex


String network_image =
    "https://img.freepik.com/free-photo/half-profile-image-beautiful-young-woman-with-bob-hairdo-posing-gazing-with-eyes-full-reproach-suspicion-human-facial-expressions-emotions-reaction-feelings_343059-4660.jpg?w=2000";

Container customcontainer() {
  return Container(
    height: 100,
    width: 100,
    decoration: CusstomDecoration(),
    child: Image.network(
      network_image,
      fit: BoxFit.fill,
    ),
  );
}

class ForthScreen extends StatelessWidget {
  ForthScreen({super.key});

  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // customcontainer(),
          // fixsizeheight12,
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     customcontainer(),
          //     customcontainer(),
          //     customcontainer(),
          //   ],
          // ),
          // fixsizeheight12,
          // SizedBox(
          //   height: 200,
          //   child: Row(
          //     children: [
          //       Expanded(
          //         flex: 200,
          //         child: Container(
          //           color: Colors.amber,
          //         ),
          //       ),
          //       Expanded(
          //         flex: 400,
          //         child: Container(
          //           color: Colors.green,
          //         ),
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Expanded(
          //         flex: 400,
          //         child: Container(
          //           color: Colors.red,
          //         ),
          //       ),
          //     ],
          //   ),
          // )

          Expanded(
              flex: 6,
              child: Container(
                color: Colors.yellow,
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
              )),
        ]),
      ),
    ));
  }
}
