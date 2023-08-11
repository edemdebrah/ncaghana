import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

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
                'assets/animation_new.json',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Data Analysis',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Delivering realtime statistics and transparency in the regulation of communication services',
              style: TextStyle(
                fontSize: 22,
                //fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
