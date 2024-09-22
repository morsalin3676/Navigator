import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_practics/profile.dart';
import 'package:widgets_practics/setting.dart';

class HomeScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Home'),
          leading: Icon(Icons.home),
        ),
        body: Center(   //center
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return setting();
                      },
                    ),
                  );
                },
                child: Text('go to setting'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return profile(
                          userName: 'morsalin',
                        );
                      },
                    ),
                  );
                },
                child: Text('go to profile'),
              ),
            ],
          ),
        ));
  }
}
