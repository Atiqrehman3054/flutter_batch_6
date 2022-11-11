import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/UI_list.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // height: 400,
            child: GridView.builder(
                itemCount: all_data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10),
                itemBuilder: (contextx, index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: all_data[index].color,
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/Images/${all_data[index].image}"))),
                      child: Center(
                          child: Text(
                        all_data[index].name,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )));
                }),
          )
        ],
      ),
    );
  }
}
