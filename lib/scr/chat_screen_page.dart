// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  Widget Mywidget() {
    return Container(
      height: 104,
      width: 300,
      decoration: BoxDecoration(
        color: HexColor("#f5f5f5"),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green, width: 2),
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 220, 0),
          child: Text(
            "Name",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 4, 0, 0),
          child: Container(
            child: Text(
              "Culpa ipsum officia sunt anim commodo aliqua veniam exercitation amet.Quis pariatur eiusmod qui commodo cupidatat.Excepteur magna incididunt consectetur eu veniam incididunt amet officia.",
              style: GoogleFonts.openSans(
                  color: HexColor("202022"),
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "MESSAGES",
                  style: GoogleFonts.openSans(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Mywidget(),
              SizedBox(
                height: 10,
              ),
              Mywidget(),
              SizedBox(
                height: 10,
              ),
              Mywidget(),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 11),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Message"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 240,
                          decoration: BoxDecoration(
                            color: HexColor("#f5f5f5"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green, width: 2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 11),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: "Name"),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 50, child: Image.asset("Assets/send.png"))
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
