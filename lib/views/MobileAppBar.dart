import 'package:flutter/material.dart';
import 'package:mysite/views/projects.dart';
import 'package:mysite/views/resume.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.black,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: new AssetImage("images/profile.jpeg"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "/home/ÖMER_ERKAN",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Row(
                      children: [
                        FlatButton(
                          textColor: Colors.white,
                          child: Text(
                            "About",
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => About()),
                            ),
                          },
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          child: Text(
                            "Projects",
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Projects()),
                            ),
                          },
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          child: Text(
                            "Blog",
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => html.window.location.href =
                              "https://medium.com/@oerkan.dev",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
