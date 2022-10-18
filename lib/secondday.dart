import 'package:flutter/material.dart';

Color black_color = Colors.black;

class SecondDay extends StatelessWidget {
  SecondDay({super.key});
  String appBar_data = "SecondScreen";
  var custom_style = TextStyle(
    color: black_color,
    fontSize: 22.0,
    fontWeight: FontWeight.normal,
    // fontFamily: ""
  );
  Color pagecustomcolor = Colors.amber;
  TextStyle custom_style2 = TextStyle(
    color: Colors.red,
    fontSize: 30.0,
  );

  IconData icondata = Icons.search;
  IconData icondata2 = Icons.phone;
  IconData icondata3 = Icons.contact_mail;
  SizedBox fixsize12 = const SizedBox(
    width: 12.0,
  );

  Function() floationbuttonfun = () {
    List all = [1, 2, 3, 4, 5, 6];
    print("All data of list $all");
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: pagecustomcolor,
        leading: Icon(
          Icons.add,
          color: black_color,
          size: 40.0,
        ),
        centerTitle: true,
        title: Text(appBar_data,
            style: custom_style.copyWith(fontSize: 18.0, color: Colors.red)),

        actions: [
          Icon(
            icondata,
            color: black_color,
          ),
          fixsize12,
          Icon(
            icondata2,
            color: black_color,
          ),
          fixsize12,
          Icon(
            icondata3,
            color: black_color,
          ),
          fixsize12
        ],
        // bottom: ,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: pagecustomcolor,
          onPressed: floationbuttonfun,
          child: Icon(
            Icons.chat,
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
