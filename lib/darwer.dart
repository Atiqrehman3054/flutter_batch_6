import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';

class EighteenScreen extends StatelessWidget {
  const EighteenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          // ignore: sort_child_properties_last
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/Images/image (1).jpg"),
              ),
              fixsizeheight12,
              Text(
                "Flutter class",
                style: custom,
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                onTap: () => Navigator.pushNamed(context, "Tabbar"),
                title: Text(
                  "HomeScreen",
                  style: custom,
                ),
                subtitle: Divider(color: Colors.black, thickness: 2),
                trailing: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              )
            ],
          ),
          height: double.infinity,
        ),
      ),
      appBar: AppBar(
          title: Text(
        "Drawer",
        style: custom,
      )),
    ));
  }
}
