import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/animation.dart';
import 'package:flutter_ui_batch_6/fifteen.dart';
import 'package:flutter_ui_batch_6/sixteen.dart';

class Seventeen extends StatelessWidget {
  const Seventeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Tabbbar"),
        // bottom: const
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: DefaultTabController(
                length: 3,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.brown,
                        child: TabBar(
                            // overlayColor: Co,
                            indicatorWeight: 13.0,
                            // isScrollable: false,
                            labelColor: Colors.red,
                            unselectedLabelColor: Colors.blue,
                            indicatorColor: Colors.amber,
                            tabs: [
                              Tab(
                                text: "Home",
                                icon: Icon(
                                  Icons.home_filled,
                                ),
                              ),
                              Tab(
                                text: "Phone",
                                icon: Icon(
                                  Icons.phone,
                                ),
                              ),
                              Tab(
                                text: "Photo",
                                icon: Icon(
                                  Icons.add_a_photo,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: TabBarView(

                          // physics: NeverScrollableScrollPhysics(),
                          children: [
                            FourteenSreen(),
                            SixteenScreen(name: "afaq"),
                            FifteenScreen(),
                          ]),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
