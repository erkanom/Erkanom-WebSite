import 'package:flutter/material.dart';
import 'package:mysite/views/aboutMe.dart';

final about = new GlobalKey();
final project = new GlobalKey();
final resume = new GlobalKey();

class WhoAmI extends StatelessWidget {
  void aboutButton() {
    Scrollable.ensureVisible(about.currentContext);
  }

  void resumeButton() {
    Scrollable.ensureVisible(resume.currentContext);
  }

  void projectButton() {
    Scrollable.ensureVisible(project.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    double _contentHeight = MediaQuery.of(context).size.height + 100;
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
                Container(
                  height: 100,
                ),
                Container(
                  key: about,
                  height: _contentHeight,
                  child: AboutMe(),
                ),
                Container(
                  key: resume,
                  height: _contentHeight,
                ),
                Container(
                  key: project,
                  height: _contentHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
