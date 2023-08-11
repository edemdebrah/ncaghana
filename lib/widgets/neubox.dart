import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: Offset(5, 5),
                color: Colors.grey.shade400),
            BoxShadow(
              blurRadius: 10,
              offset: Offset(-5, -5),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
