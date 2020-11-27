import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Text("naber", style: TextStyle(color: Colors.white)),
    );
  }
}
