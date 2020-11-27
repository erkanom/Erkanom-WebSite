import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
            height: 250,
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
        ],
      ),
    );
  }
}
