import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../widgets/neubox.dart';
import 'fmStationsListAccra.dart';

// ignore: must_be_immutable
class FmService extends StatelessWidget {
  //total number of fm stations
  //plan on using it to compute the percentages per region
  //and also other statistics in the future
   int totalStations = 710;

/*List of FM Stations in regional distribution.
  This will be used to populate the distribution
  on the FM Services UI
  List RegionalDist = [
    ['Greater Accra Region', 75, 80],
    ['Ashanti Region', 101, 80],
    ['Western Region', 88, 80],
    ['Western North Region', 25, 80],
    ['Eastern Region', 51, '80%'],
    ['Volta Region', 46, '80%'],
    ['Oti Region', 14, '80%'],
    ['Central Region', 56, '80%'],
    ['Bono Region', 58, '80%'],
    ['Bono East Region', 30, '80%'],
    ['Ahafo Region', 15, '80%'],
    ['Northern Region', 51, '80%'],
    ['Savannah Region', 12, '80%'],
    ['North East Region', 13, '80%'],
    ['Upper East Region', 34, '80%'],
    ['Upper West Region', 32, '80%'],
  ];
*/

  List RegionalDist = [
    ['Greater Accra Region', 77, 10, fmStationsListAccra()],
    ['Ashanti Region', 101, 14.4, fmStationsListAccra()],
    ['Western Region', 87, 12.6, fmStationsListAccra()],
    ['Western North Region', 27, 3.6, fmStationsListAccra()],
    ['Eastern Region', 51, 7.3, fmStationsListAccra()],
    ['Volta Region', 46, 6.6, fmStationsListAccra()],
    ['Oti Region', 14, 1.9, fmStationsListAccra()], //*
    ['Central Region', 56, 7.9, fmStationsListAccra()], //*
    ['Bono Region', 58, 8.3, fmStationsListAccra()],
    ['Bono East Region', 30, 4.3, fmStationsListAccra()],
    ['Ahafo Region', 15, 2.1, fmStationsListAccra()],
    ['Northern Region', 51, 7.3, fmStationsListAccra()],
    ['Savannah Region', 12, 1.7, fmStationsListAccra()],
    ['North East Region', 13, 1.9, fmStationsListAccra()],
    ['Upper East Region', 34, 4.9, fmStationsListAccra()],
    ['Upper West Region', 32, 4.6, fmStationsListAccra()],
  ];

  FmService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //height: 380,
              width: double.infinity,
              //alignment: Alignment.center,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //shape: BoxShape.circle,
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
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/fmbanner.jpg',

                      // height: 270,
                      // width: 270,
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 5.0,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        /* Icon(
                                            FontAwesomeIcons.locationArrow,
                                            size: 10.0,
                                            color: Colors.white,
                                          ), */
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'FM RADIO BROADCASTING SERVICE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NeuBox(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        child: Image.asset(
                          'assets/correct5.png',
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        totalStations.toString() + " AUTHORISED STATIONS",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NeuBox(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          percent: 0.7,
                          lineWidth: 12,
                          radius: 50,
                          progressColor: Colors.green,
                          animation: true,
                          center: Text(
                            "70.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                          // footer: Text(
                          //   "On-Air Stations",
                          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          // ),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "On-Air Stations",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                NeuBox(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          percent: 0.3,
                          lineWidth: 12,
                          radius: 50,
                          //progressColor: Colors.green,
                          animation: true,
                          center: Text(
                            "30.0%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                          // footer: Text(
                          //   "On-Air Stations",
                          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          // ),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Off-Air Stations",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Text(
            //     'Radio FM broadcasting is the technology of using radio waves to carry information, in this case, sound, transmitted through space and intended for the direct reception and accessibility of the general public',
            //     style: TextStyle(fontSize: 15, height: 2.0),
            //     textAlign: TextAlign.justify,
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Regional Distribution',
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey[900],
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              //color: Colors.grey[400],
              height: 400,
              //creating the list of fm stations with
              //their regional distribution using the
              //List of Regional Distribution
              child: ListView.builder(
                  itemCount: RegionalDist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegionalDist[index][3],
                          ),
                        );
                      },
                      child: NeuBox(
                        child: Container(
                          //height: 90,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    //showing name of region
                                    RegionalDist[index][0],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    //showing number of stations in region
                                    RegionalDist[index][1].toString() +
                                        ' Stations',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              LinearPercentIndicator(
                                percent: RegionalDist[index][2] / 100,
                                lineHeight: 18,
                                // ignore: deprecated_member_use
                                linearStrokeCap: LinearStrokeCap.round,
                                progressColor: Colors.green,
                                animation: true,
                                center: Text(
                                  RegionalDist[index][2].toString() + '%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
