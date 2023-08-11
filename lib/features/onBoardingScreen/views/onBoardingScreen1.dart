import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background1.jpeg'),
            //the fit property enables the image fill entire screen
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 280,
                width: 280,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/ncalogo.png',
                ),
              ),
              //leaving a vertical space of 30px

              const SizedBox(
                height: 20,
              ),

              const Text(
                'Communications for Development!',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
