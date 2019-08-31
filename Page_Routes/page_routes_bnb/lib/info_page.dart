import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[200],
      child: Center(
        child: Text(
          "Info Page",
          style: TextStyle(fontFamily: 'Acme', fontSize: 35),
        ),
      ),
    );
  }
}
