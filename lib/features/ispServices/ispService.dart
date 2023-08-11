import 'package:flutter/material.dart';
import 'package:ncaghana/widgets/ispListContainer.dart';

import '../../widgets/neuboxCustom.dart';

class IspService extends StatefulWidget {
  const IspService({Key? key}) : super(key: key);

  @override
  _IspServiceState createState() => _IspServiceState();
}

class _IspServiceState extends State<IspService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                //height: 380,
                width: double.infinity,
                //alignment: Alignment.center,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //shape: BoxShape.circle,
                    color: Colors.grey[300],
                    boxShadow: const [
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
                        'assets/mobileNetwork11.jpeg',
                        //height: 270,
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
                            children: const <Widget>[
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
                                'INTERNET SERVICE PROVIDERS',
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
                )),
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
                          color: Colors.green[500],
                        ),
                      ),
                      Text(
                        "25 AUTHORISED OPERATORS",
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
            const SizedBox(
              height: 20,
            ),
            IspListContainer(),
            IspListContainer(),
            IspListContainer(),
            IspListContainer(),
            IspListContainer(),
          ],
        ),
      ),
    );
  }
}
