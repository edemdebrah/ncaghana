/*
This is the main Mobile Network Operators (MNO's Services
landing page. 
*/

import 'package:flutter/material.dart';

//import 'package:percent_indicator/circular_percent_indicator.dart';
//import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../providers/mnoDataProvider.dart';
import '../../../widgets/neuboxCustom.dart';
import 'newboxCustomMNO.dart';
import 'package:provider/provider.dart';

class MNOService extends StatelessWidget {
  //List of Services (database for TV services), which will
  //be automatically populated when called in our UI
  //with an item/listveiw builder or any
  //decide on whether to use local or cloud storage
  //while consideration both advantages annd disadvantages

  @override
  Widget build(BuildContext context) {
    var mnoData = context.watch<MnoDataProvider>().mnoData;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   title: Text('Television Broadcasting '),
      //   backgroundColor: Colors.grey,
      // ),
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
                      'assets/mobileNetwork2.jpeg',
                      height: 240,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 5.0,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 6,
                        ),
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
                              'MOBILE NETWORK OPERATORS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "4 AUTHORISED OPERATORS",
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
            //List of authorised MNO's
            Container(
              height: 600,
              child: ListView.builder(
                itemCount: mnoData.length,
                itemBuilder: ((context, index) {
                  final mnoDataCurrentIndex = mnoData[index];
                  return NeuBoxCustomMNO(
                    color1: mnoDataCurrentIndex.color1,
                    color2: mnoDataCurrentIndex.color2,
                    color3: mnoDataCurrentIndex.color3,
                    image: mnoDataCurrentIndex.image,
                    companyName: mnoDataCurrentIndex.companyName,
                    tradeName: mnoDataCurrentIndex.tradeName,
                    voiceSubscription: mnoDataCurrentIndex.voiceSubscription,
                    dataSubscription: mnoDataCurrentIndex.dataSubscription,
                  );
                }),
              ),
            ),

            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
