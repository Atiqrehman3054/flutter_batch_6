import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ui_batch_6/HelpingFile/const.dart';
import 'package:flutter_ui_batch_6/eleventh.dart';
import 'package:flutter_ui_batch_6/secondday.dart';
import 'package:get/get.dart';

class Async_await extends StatelessWidget {
  const Async_await({Key? key}) : super(key: key);

////////////////then/catch error
  Future getdata() async {
    Future.delayed(Duration(seconds: 5), () {
      print("wait 5 second and then print");
    }).then((value) => {
          Future.delayed(Duration(seconds: 3), () {
            print("wait 3 second and then print");
          })
              .then((value) => {
                    Future.delayed(Duration(seconds: 2), () {
                      print("wait 2 second and then print");
                    }).then((value) => {
                          print("print line witout wait"),
                        }),
                  })
              .catchError((e) {
            print(e);
          })
        });
  }

//////////////////////awiat
  Future getdata_with_await() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("wait 2 second and then print");
    });

    await Future.delayed(Duration(seconds: 5), () {
      print("wait 5 second and then print");
    });
    await Future.delayed(Duration(seconds: 3), () {
      print("wait 3 second and then print");
    });

    print("this is simple print");
  }

////future_builder_fun

  Future<String> User_Data() async {
    String user_name = await Future.delayed(Duration(seconds: 4), () {
      return "Flutter_Batch#6";
    });

    return user_name;
  }

  ////////////////////strem_builder
  Stream stream_data() async* {
    for (int i = 0; i < 1000; i++) {
      yield i;
      await Future.delayed(
        Duration(milliseconds: 500),
      );
    }
  }

  //await

  Future First() async {
    Future.delayed(Duration(seconds: 2), () {
      print("this is  waiting");
    }).then((value) {
      Future.delayed(Duration(seconds: 1), () {
        print("this is  thrid one");
      });
    });

    print("this is not awiting");
  }

  Future seconde() async {
    await Timer(Duration(seconds: 3), () {
      print("this is fisrt");
    });
    await Timer(Duration(seconds: 2), () {
      print("this is second");
    });
  }

  student_Data() async {
    String student_name = await Future.delayed(Duration(seconds: 7), () {
      return "Flutter#batch6";
    });

    return student_name;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    var getW = Get.width;
    var getH = Get.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "this simple ${w.toString()}",
              style: custom,
            ),
            Text(
              "this simple height ${h.toString()}",
              style: custom,
            ),
            Text(
              "this gext ${getW.toString()}",
              style: custom,
            ),
            Text(
              "this getx ${getH.toString()}",
              style: custom,
            ),
            fixsizeheight12,
            fixsizeheight12,
            fixsizeheight12,
            TextButton(
                onPressed: () {
                  First();
                },
                child: Text(
                  "await",
                  style: custom,
                )),
            TextButton(
                onPressed: () {
                  seconde();
                },
                child: Text(
                  "another",
                  style: custom,
                )),
            SizedBox(
              height: 100,
              child: FutureBuilder(
                future: student_Data(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: custom,
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),

            SizedBox(
              height: 100,
              child: StreamBuilder(
                  stream: stream_data(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.toString());
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            )

            //  SizedBox(
            //   height: 100,
            //   child: FutureBuilder(future: ,
            //   builder: (context,snapshot){
            //     return Text("dat");
            //   }),
            // )

            // Center(
            //   child: MaterialButton(
            //     color: Colors.red,
            //     onPressed: () {
            //       //then/error_catch
            //       // getdata();
            //       // await_async
            //       // getdata_with_await();
            //     },
            //     child: Text("show data "),
            //   ),
            // ),
            // Expanded(
            //     flex: 5,
            //     child: FutureBuilder(
            //       future: User_Data(),
            //       builder: ((context, snapshot) {
            //         print("rebuild ther future");
            //         if (snapshot.hasData) {
            //           return Column(
            //             children: [
            //               Text(
            //                 "future_builder",
            //                 style: custom,
            //               ),
            //               Text(snapshot.data.toString()),
            //             ],
            //           );
            //         } else {
            //           return Center(child: CircularProgressIndicator());
            //         }
            //       }),
            //     )),
            // Expanded(
            //     flex: 5,
            //     child: StreamBuilder(
            //       stream: stream_data(),
            //       builder: ((context, snapshot) {
            //         print("rebuild ther steam");
            //         if (snapshot.hasData) {
            //           return Column(
            //             children: [
            //               Text(
            //                 "stream_build",
            //                 style: custom,
            //               ),
            //               Text(
            //                 snapshot.data.toString(),
            //                 style: custom,
            //               ),
            //             ],
            //           );
            //         } else {
            //           return Center(child: CircularProgressIndicator());
            //         }
            //       }),
            //     ))
          ],
        ),
      ),
    );
  }
}
