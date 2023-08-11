import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
          child: Center(
        child: Text(
          'INFO SCREEN',
          style: TextStyle(
            fontSize: 34,
          ),
        ),
      )),
    );
  }
}