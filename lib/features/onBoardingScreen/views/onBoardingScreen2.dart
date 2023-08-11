import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

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
                'assets/animation_connecting.json',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Briding the Digital Divide',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'The (NCA) is committed to providing life changing regulatory services aimed at connecting all Ghanaians',
              style: TextStyle(
                fontSize: 22,
                // fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
//'The (NCA) is committed to providing life changing regulatory services aimed at connecting all citizens.',