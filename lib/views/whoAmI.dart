import 'package:flutter/material.dart';
import 'package:mysite/views/aboutMe.dart';
import 'package:mysite/views/mobileAbout.dart';

final about = new GlobalKey();

class WhoAmI extends StatelessWidget {
  void aboutButton() {
    Scrollable.ensureVisible(about.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    double _contentHeight = MediaQuery.of(context).size.height;
    if (MediaQuery.of(context).size.width > 500) {
      return Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          //composed part
          child: Container(
            width: 1140,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //  Container(
                  // height: 100,
                  // ),
                  Container(
                    key: about,
                    height: _contentHeight,
                    child: AboutMe(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          //composed part
          child: Container(
            width: 1140,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //  Container(
                  // height: 100,
                  // ),
                  Container(
                    key: about,
                    height: _contentHeight,
                    child: MobileAbout(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
