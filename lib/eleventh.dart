import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//textfeild
//stack

class EleventhScreen extends StatelessWidget {
  EleventhScreen({super.key});

  TextEditingController name_controller = TextEditingController();
  String textfeild_data = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Textfeild",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.send,
                    // maxLength: 10,
                    // maxLines: 6,

                    onChanged: (value) {
                      textfeild_data = value;
                      print("thi is value $value");
                    },
                    obscureText: true,
                    style: GoogleFonts.actor(),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                        label: Text("NextName"),
                        hintStyle: custom,
                        // prefix: CircularProgressIndicator(),
                        prefixIcon: Icon(Icons.person),

                        // suffix:

                        suffixIcon: Icon(Icons.calendar_month)),

                    controller: name_controller,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      print(
                          "textfeild data ${name_controller.text} ${name_controller.value}");
                      print("string data $textfeild_data");
                      name_controller.clear();
                    },
                    child: Text(("Show data")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle custom = GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.bold);
