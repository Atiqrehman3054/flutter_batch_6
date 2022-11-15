import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//textfeild
//stack

class TwelethScreen extends StatelessWidget {
  TwelethScreen({super.key});

  TextEditingController name_controller = TextEditingController();
  String textfeild_data = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 500,
              width: 300,
              child: Stack(
                // alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    // color: Colors.red,
                  ),
                  Positioned(
                    top: 50,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.4,
                                offset: Offset(0, 1)),
                          ],
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 47,
                        backgroundImage:
                            AssetImage("assets/Images/image (1).jpg"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

TextStyle custom = GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.bold);
