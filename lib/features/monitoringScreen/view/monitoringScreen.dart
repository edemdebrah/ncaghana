import 'package:flutter/material.dart';

class MonitoringScreen extends StatelessWidget {
  const MonitoringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
          child: Center(
        child: Text(
          'MONITORING SCREEN',
          style: TextStyle(
            fontSize: 34,
          ),
        ),
      )),
    );
  }
}
