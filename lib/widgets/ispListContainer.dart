import 'package:flutter/material.dart';

class IspListContainer extends StatelessWidget {
  const IspListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(
            12,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 14,
              // spreadRadius: 0,
              color: Colors.grey.shade700,
            ),
            BoxShadow(
              offset: Offset(-4, -4),
              blurRadius: 14,
              // spreadRadius: 0,
              color: Colors.white,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            //end: Alignment(0.8, 1),
            colors: <Color>[
              Colors.grey.shade200,
              Colors.grey.shade300,
              Colors.grey.shade400,
            ],
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.apple,
              size: 54,
              color: Colors.black,
            ),
            Text(
              'BUSY INTERNET SERVICES',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
