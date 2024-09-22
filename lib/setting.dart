import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_practics/homeScren.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('setting'),
        leading: Icon(Icons.settings),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('go to setting')),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScren();
                  },
                ), (route) => true);
              },
              child: Text('back to home'), //text
            ),
          ],
        ),
      ),
    );
  }
}
