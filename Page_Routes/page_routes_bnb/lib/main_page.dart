import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(
        child: Text(
          "Main Page",
          style: TextStyle(fontFamily: 'Genel', fontSize: 35),
        ),
      ),
    );
  }
}
