import 'package:flutter/material.dart';
import 'package:mysite/views/MobileAppBar.dart';
import 'package:mysite/views/whoAmI.dart';
import 'package:mysite/widgets/CustomAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      return Scaffold(
        body: Stack(
          children: [WhoAmI(), CustomAppBar()],
        ),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [WhoAmI(), MobileAppBar()],
        ),
      );
    }
  }
}
