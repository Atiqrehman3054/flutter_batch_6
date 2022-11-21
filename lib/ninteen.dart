import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';
import 'package:flutter_ui_batch_6/tweleth.dart' as twel;
import 'package:get/get.dart';

class NinteenScreen extends StatelessWidget {
  NinteenScreen({super.key});

  AlertDialog new_alert = AlertDialog(
    content: Container(
      height: 200,
      child: Text(
        "this is our first alertdilog",
        style: custom,
      ),
    ),
    actions: [
      MaterialButton(
        onPressed: () {},
        child: Text("cancle"),
      ),
    ],
    // backgroundColor: Colors.red,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );

  showbox({BuildContext? context}) {
    showModalBottomSheet(
        enableDrag: true,
        backgroundColor: Colors.transparent,
        context: context!,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: 200,
            width: double.infinity,
            child: Center(
                child: Text(
              "this is modal bottom sheet",
              style: custom.copyWith(color: Colors.white),
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(children: [
          Text(
            "hii this is out side padding",
            style: custom,
          ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new_alert;
                    });
              },
              child: Text(
                "AlertBox",
                style: twel.custom,
              )),
          fixsizeheight12,
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      content: Container(
                        height: 200,
                      ),
                      backgroundColor: Colors.green,
                      dismissDirection: DismissDirection.endToStart,
                      duration: Duration(seconds: 2)),
                );
              },
              child: Text(
                "snakbar",
                style: twel.custom,
              )),
          fixsizeheight12,
          Text(
            "Getx",
            style: twel.custom.copyWith(fontWeight: FontWeight.w700),
          ),
          fixsizeheight12,
          fixsizeheight12,
          ElevatedButton(
            onPressed: () {
              Get.snackbar("name majeed sami", "flutter class",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  // padding: EdgeInsets.only(bottom: 10),
                  snackStyle: SnackStyle.FLOATING,
                  margin: EdgeInsets.only(bottom: 10));
            },
            child: Text("GEtxpop"),
          ),
          fixsizeheight12,
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                  content: Text("Data of Getx"),
                  title: "GEXt",
                  barrierDismissible: false);
            },
            child: Text("GetxAlert"),
          ),
          fixsizeheight12,
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 400,
                  color: Colors.red,
                ),
                // isDismissible: true,
                barrierColor: Colors.amber,
              );
            },
            child: Text("BottomSheet"),
          ),
          fixsizeheight12,
          ElevatedButton(
            onPressed: () {
              showbox(context: context);
            },
            child: Text("BottomSheet"),
          ),
        ]),
      ),
      bottomSheet: Container(
        height: 70,
        color: Colors.amberAccent,
      ),
      // bottomSheet: BottomSheet(),
    ));
  }
}
