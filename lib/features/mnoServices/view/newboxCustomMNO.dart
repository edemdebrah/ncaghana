import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

//import 'package:slide_to_act/slide_to_act.dart';
//import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

//this widget will display the list of Authorised MNO's
class NeuBoxCustomMNO extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final String tradeName;
  final String companyName;
  final String image;
  final double voiceSubscription;
  final double dataSubscription;

  const NeuBoxCustomMNO({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    this.companyName = 'Company Name',
    this.tradeName = 'Trade Name',
    required this.image,
    required this.dataSubscription,
    required this.voiceSubscription,
  });

  @override
  Widget build(BuildContext context) {
    //modal button sheet to be shown when user click
    //on an MNO
    void showBtmSheet() {
      showModalBottomSheet(
        backgroundColor: color1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        //barrierColor: Colors.grey.withOpacity(0.8),
        context: context,
        builder: (BuildContext context) {
          return const SizedBox(
            height: 1000,
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.green,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: const Offset(5, 5),
                color: Colors.grey.shade400),
            const BoxShadow(
              blurRadius: 10,
              offset: const Offset(-5, -5),
              color: Colors.white,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color1,
              color2,
              color3,
            ],
          ),
        ),
        //padding of the innerbox
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          //defining the inner box
          child: Container(
            // height: 230,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //image/logo of MNO
                        Container(
                          height: 40,
                          child: Image.asset(
                            image,
                            //color: Colors.amber,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //Tradename of Operator
                        Text(
                          tradeName,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Name of MNO
                    Text(
                      companyName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //display a container with statistics
                    //of data and voice market share

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Voice subscription data
                        Expanded(
                          child: Container(
                            //height: 180,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: [
                              //   BoxShadow(
                              //     offset: Offset(4, 4),
                              //     spreadRadius: 1,
                              //     blurRadius: 20,
                              //     blurStyle: BlurStyle.normal,
                              //   )
                              // ],
                            ),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  percent: voiceSubscription / 100,
                                  lineWidth: 12,
                                  radius: 50,
                                  progressColor: color2,
                                  animation: true,
                                  center: Text(
                                    voiceSubscription.toString() + '%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.phone_in_talk,
                                      size: 30,
                                    ),
                                    Text(
                                      "Voice Subscription",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //Data subscription container
                        Expanded(
                          child: Container(
                            //height: 180,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                0.6,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                CircularPercentIndicator(
                                  percent: dataSubscription / 100,
                                  lineWidth: 12,
                                  radius: 50,
                                  progressColor: color2,
                                  animation: true,
                                  center: Text(
                                    dataSubscription.toString() + '%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.import_export,
                                      size: 40,
                                    ),
                                    Text(
                                      "Data Subscription",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                    //adding slider button to view more when user slides

                    // SlideAction(
                    //   borderRadius: 10,
                    //   height: 60,
                    //   //sliderButtonIconSize: 50,
                    //   sliderButtonIconPadding: 10,
                    //   sliderButtonIcon: Icon(Icons.arrow_forward),
                    //   innerColor: color2,
                    //   outerColor: Colors.black54,
                    //   text: 'Slide to view more',
                    //   textStyle: TextStyle(
                    //     fontSize: 20,
                    //     color: color2,
                    //   ),
                    //   onSubmit: () {
                    //     showBtmSheet();
                    //   },
                    // )
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                  color: color1,
                ),
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-2, -2),
                  color: color1,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  color1,
                  color2,
                  color3,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
