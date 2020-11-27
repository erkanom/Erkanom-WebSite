import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:html' as html;

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                child: Center(
                  child: Text(
                    "I am a ",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 264.0,
                    child: Center(
                      child: SizedBox(
                        width: 264.0,
                        child: TypewriterAnimatedTextKit(
                          speed: Duration(milliseconds: 100),
                          stopPauseOnTap: false,
                          repeatForever: true,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "Software Engineer",
                            "Mobile Developer",
                          ],
                          textStyle:
                              TextStyle(fontSize: 30.0, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Bundan uzeri animasyona ait ellesme pek
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  backgroundImage: new AssetImage("images/github.png"),
                ),
                onTap: () =>
                    html.window.location.href = "https://github.com/erkanom",
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  backgroundImage: new AssetImage("images/linkedin.png"),
                ),
                onTap: () => html.window.location.href =
                    "https://www.linkedin.com/in/%C3%B6mererkan/",
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  backgroundImage: new AssetImage("images/twitter.png"),
                ),
                onTap: () =>
                    html.window.location.href = "https://twitter.com/erkanom",
              ),
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  backgroundImage: new AssetImage("images/medium-new.png"),
                ),
                onTap: () => html.window.location.href =
                    "https://medium.com/@oerkan.dev",
              ),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
