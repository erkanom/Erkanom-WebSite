import 'package:flutter/material.dart';
import 'package:mysite/views/aboutMe.dart';

class WhoAmI extends StatelessWidget {
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
                  height: _contentHeight,
                  child: AboutMe(),
                ),
                Container(
                  height: _contentHeight,
                  color: Colors.purple,
                ),
                Container(
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
