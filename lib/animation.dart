import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';
import 'package:flutter_ui_batch_6/firstday.dart';
import 'package:flutter_ui_batch_6/main.dart';
import 'package:flutter_ui_batch_6/secondday.dart';
import 'package:lottie/lottie.dart';

class FourteenSreen extends StatelessWidget {
  const FourteenSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Lottie.asset("assets/lottie/animation (1).json",
                    //     height: 400, width: 400),
                    // fixsizeheight12,
                    // Lottie.asset("assets/lottie/animation (2).json",
                    //     height: 400, width: 400),
                    // fixsizeheight12,
                    // Lottie.asset("assets/lottie/animation (3).json",
                    //     height: 400, width: 400),
                    // fixsizeheight12,
                    // Lottie.asset("assets/lottie/animation (4).json",
                    //     height: 400, width: 400),
                    // fixsizeheight12,
                    // Lottie.asset("assets/lottie/animation (5).json",
                    //     height: 400, width: 400),
                    // fixsizeheight12,
                    // Lottie.asset("assets/lottie/animation (7).json",
                    //     height: 400, width: 400),
                    // Lottie.asset("assets/lottie/animation (6).json",
                    //     height: 400, width: 400),
                    // Lottie.asset("assets/lottie/animation (6).json",
                    //     height: 400, width: 400),

                    Lottie.network(
                        "https://assets9.lottiefiles.com/private_files/lf30_q5pzdjc7.json"),
                    // fixsizeheight12,
                  ],
                ),
              ),
            )));
  }
}
