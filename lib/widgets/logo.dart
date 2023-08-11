import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double logoHeight;
  final double logoWidth;

  Logo({
    this.logoHeight = 180,
    this.logoWidth = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: logoHeight,
        width: logoWidth,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                color: Colors.grey,
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                offset: Offset(-5, -5),
                color: Colors.white,
                blurRadius: 15,
                spreadRadius: 1,
              )
            ]),
        child: Image.asset(
          'assets/ncalogo.png',
          // height: 170,
          // width: 170,
        ),
      ),
    );
  }
}
