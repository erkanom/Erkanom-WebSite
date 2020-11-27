import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:mysite/views/whoAmI.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          color: Colors.black,
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              width: 1140,
              color: Colors.black,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                new AssetImage("images/profile.jpeg"),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "/home/ÖMER_ERKAN",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
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
                              WhoAmI().aboutButton(),
                            },
                          ),
                          FlatButton(
                            textColor: Colors.white,
                            child: Text(
                              "Resume",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => {
                              WhoAmI().resumeButton(),
                            },
                          ),
                          FlatButton(
                            textColor: Colors.white,
                            child: Text(
                              "Projects",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => {
                              WhoAmI().projectButton(),
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
