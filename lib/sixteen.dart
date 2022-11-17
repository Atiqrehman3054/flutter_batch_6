import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixteenScreen extends StatefulWidget {
  SixteenScreen({required this.name, super.key});

  String name;

  @override
  State<SixteenScreen> createState() => _SixteenScreenState();
}

class _SixteenScreenState extends State<SixteenScreen> {
  @override
  TextEditingController name = TextEditingController();

  void didChangeDependencies() {
    print("didchangecalling");

    print(widget.name);

    widget.name = "React native class";
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void initState() {
    // TODO: implement initState
    print("first calling");

    print(widget.name);

    widget.name = "FLutter class";

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    name.text = widget.name;
    print("text editing controlloer ${name.text}");
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            Text(
              "My Name is ${widget.name}",
              style: GoogleFonts.pollerOne(fontSize: 20),
            ),
          ],
        ),
      ),
    ));
  }
}
