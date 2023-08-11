/*
This is the main TV Broadcasting Services
landing page. 
*/

import 'package:flutter/material.dart';
import 'package:ncaghana/features/tvServices/view/tvStationsList3.dart';
import 'package:ncaghana/providers/serviesNamesPovider.dart';

import 'package:ncaghana/widgets/neubox.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../widgets/neuboxCustom.dart';
import '../../../widgets/tv_services_list.dart';
import 'package:provider/provider.dart';

class TvService extends StatelessWidget {
  //List of Services (database for TV services), which will
  //be automatically populated when called in our UI
  //with an item/listveiw builder or any

  final List TvCategories = [
    // [
    //   'Name of TV service (categorized by mode of reception)',
    //   'Other Description',
    //   Total number authorised,
    //   Total number on air,
    //   Total number off air,
    // ],
    [
      'Digital Terrestrial FTA TV Programme Channel',
      'National Coverage',
      40,
      39,
      1,
    ],
    [
      'Digital Terrestrial FTA TV Programme Channel',
      'Regional Coverage',
      6,
      6,
      0,
    ],
    [
      'Digital Terrestrial Pay Television',
      'Service & Frequency',
      5,
      5,
      0,
    ],
    [
      'Satellite TV FTA Single Channel',
      'Television Service',
      77,
      49,
      28,
    ],
    [
      'Satellite TV FTA Bouquet',
      'Television Service',
      9,
      6,
      3,
    ],
    [
      'Satellite TV Pay Bouquet',
      'Television Service',
      3,
      3,
      0,
    ],
    [
      'Subscription Management Service',
      'Satellite Television',
      1,
      1,
      0,
    ],
    [
      'Digital Cable Television',
      'Television Service',
      1,
      1,
      0,
    ],
    [
      'IPTV',
      'Television Service',
      2,
      0,
      2,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    //provider. this is where the data will be collected from
    var services = context.watch<ServicesNamesProvider>().services;
    //declaring the total number of authorised tv stations
    //
    final tvTotalAuthorised = services[1].totalAuthorised;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //UI for the headers image and description
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
                      'assets/tv_service_banner.jpg',

                      //height: 270,
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
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'TELEVISION BROADCASTING SERVICE',
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
            // total number of authorised stations UI
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TvStationsList3(),
                    ),
                  );
                },
                child: NeuBoxCustom(
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
                            color: Colors.brown,
                          ),
                        ),
                        Text(
                          tvTotalAuthorised.toString() + " AUTHORISED STATIONS",
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
            ),
            //UI for the statistics of On-air and Off-air
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: NeuBox(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            percent: 0.8,
                            lineWidth: 12,
                            radius: 50,
                            progressColor: Colors.brown,
                            animation: true,
                            center: Text(
                              "80.0%",
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
                ),
                NeuBox(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          progressColor: Colors.amber,
                          percent: 0.2,
                          lineWidth: 12,
                          radius: 50,
                          //progressColor: Colors.green,
                          animation: true,
                          center: Text(
                            "20.0%",
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
                'Categories',
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.grey[700],
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //section defining the list of the types of
            //tv services and its statistics
            Container(
              height: 400,
              //color: Colors.green,
              child: ListView.builder(
                itemCount: TvCategories.length,
                itemBuilder: (context, index) {
                  return TvServicesList(
                      serviceName: TvCategories[index][0],
                      description: TvCategories[index][1],
                      authorised: TvCategories[index][2],
                      onair: TvCategories[index][3],
                      offair: TvCategories[index][4]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
