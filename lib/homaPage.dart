import 'package:flutter/material.dart';

import 'package:mysite/views/whoAmI.dart';
import 'package:mysite/widgets/CustomAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [WhoAmI(), CustomAppBar()],
      ),
    );
  }
}
