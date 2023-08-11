import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String serviceName;

  final String logoImagePath;
  final int totalAuthorised;
  final Widget pageRoute;

  ServicesCard(
      {required this.serviceName,
      required this.logoImagePath,
      required this.totalAuthorised,
      required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pageRoute,
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 200,
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            //color: Colors.blue[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //defining the image for a service
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        child: Image.asset(logoImagePath),
                      ),
                    ),
                    //styling container
                    //adding ClipRRect in order to curve the borders
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.grey[500],
                        child: Text(
                          'Authorised',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //Name of service
                Flexible(
                  child: Text(
                    serviceName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                //number of authorised service
                Row(
                  children: [
                    Text(
                      totalAuthorised.toString() + ' Authorised',
                    ),
                    Container(
                      height: 30,
                      child: Image.asset(
                        'assets/correct5.png',
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
