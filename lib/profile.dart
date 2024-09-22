import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_practics/setting.dart';

class profile extends StatelessWidget {
  const profile({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('profile'),
        leading: Icon(Icons.man),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,'hello world');
              },
              child: Text('back to home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return setting();
                    },
                  ),
                );
              },
              child: Text('go to Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
