import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:flutter/material.dart';
import 'package:inclass_1/scr/chat_screen_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/chat': (context) => ChatScreen(),
      },
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.lightGreen,
                          width: 5,
                          style: BorderStyle.solid),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://media.gq.com/photos/5e6128d2398289000862596e/1:1/w_805,h_805,c_limit/tom-hardy-lead-840-social.jpg"))),
                  height: 220,
                  width: 220,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  " dvoluptate incididunt dolore ut. Quis id dolore enim ad. Minim id proident Lorem consectetur aliqua fugiat esse eiusmod.",
                  style: GoogleFonts.alumniSans(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.linkedin,
                          color: Colors.white,
                        ),
                        label: const Text("LinkedIn Profile"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 25)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.facebook,
                          color: Colors.white,
                        ),
                        label: const Text("Facebook Profile"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.instagram,
                          color: Colors.white,
                        ),
                        label: const Text("Instagram Profile"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 25)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.web,
                          color: Colors.white,
                        ),
                        label: const Text("My Website"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 25)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/733/733585.png"),
                      height: 60,
                      width: 60,
                    ),
                    Container(
                      child: Image.network(
                          "https://cdn-icons.flaticon.com/png/512/3059/premium/3059989.png?token=exp=1656770968~hmac=3860fc1e650e8aef1a11270bd6bdcd08"),
                      height: 60,
                      width: 60,
                    ),
                    InkWell(
                      child: Container(
                        child: Image.network(
                            "https://cdn-icons.flaticon.com/png/512/3032/premium/3032932.png?token=exp=1656770576~hmac=0beabf14d33bea60d59a1c66435fabe9"),
                        height: 75,
                        width: 75,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/chat');
                      },
                    ),
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
