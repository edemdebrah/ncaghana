import 'package:flutter/material.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreen2.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreen1.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreen3.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreen4.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreen5.dart';

import 'package:ncaghana/homePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenBegin extends StatefulWidget {
  const OnBoardingScreenBegin({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenBeginState createState() => _OnBoardingScreenBeginState();
}

class _OnBoardingScreenBeginState extends State<OnBoardingScreenBegin> {
  //controller to keep track of which page we are on
  PageController _controller = PageController();

  //keeping track if we are on the last page or not
  bool isLastPage = false;
  bool isFirstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isFirstPage = !(index == 0);
                isLastPage = (index == 4);
              });
            },
            children: const [
              OnBoardingScreen1(),
              OnBoardingScreen2(),
              OnBoardingScreen3(),
              OnBoardingScreen4(),
              OnBoardingScreen5(),
              // Container(
              //   color: Colors.blue,
              // ),
            ],
          ),

          //for the the control buttons and page indicator
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //skip text
                TextButton(
                  onPressed: () {
                    _controller.jumpToPage(4);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: isFirstPage ? Colors.black : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                //smooth page indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: const WormEffect(
                    dotHeight: 18,
                    dotWidth: 16,
                    type: WormType.normal,
                  ),
                ),

                //next or done
                isLastPage
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: isFirstPage ? Colors.black : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
