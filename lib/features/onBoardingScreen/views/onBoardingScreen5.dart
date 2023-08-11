import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen5 extends StatelessWidget {
  const OnBoardingScreen5({Key? key}) : super(key: key);

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
                'assets/animation_ictGrowth.json',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'ICT Growth',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Inspiring the dynamic ICT growth in Ghana, empowering connectivity, innovation, and progress, all in one place',
              style: TextStyle(
                fontSize: 22,
                //fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
