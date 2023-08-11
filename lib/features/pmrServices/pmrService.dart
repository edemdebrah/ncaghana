import 'package:flutter/material.dart';

class PmrService extends StatefulWidget {
  const PmrService({Key? key}) : super(key: key);

  @override
  _PmrServiceState createState() => _PmrServiceState();
}

class _PmrServiceState extends State<PmrService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'assets/pmrBanner2.jpeg',
                        height: 260,
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
                                'PRIVATE MOBILE RADIOS',
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
            const Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'PMR STATISTICS',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
