import 'package:flutter/material.dart';
import 'package:graduationp/screens/lost.dart';

class Addpost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lost()),
                  );
                },
                child: Container(
                  height: 200,
                  child: Center(child: Text('lost')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
