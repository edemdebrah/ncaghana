import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen4 extends StatelessWidget {
  const OnBoardingScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                // fit: BoxFit.cover,
                'assets/animation_support.json',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Support / Inquiry',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Providing quick response to enquiries and complaints',
              style: TextStyle(
                fontSize: 22,
                //fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
