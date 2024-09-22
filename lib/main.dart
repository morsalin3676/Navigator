import 'package:flutter/material.dart';

import 'homeScren.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sadiya ',
      home: HomeScren(),
      debugShowCheckedModeBanner: false,
    );
  }
}
