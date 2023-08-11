import 'package:flutter/material.dart';

class ServicesContainer extends StatelessWidget {
  final String serviceName;
  final Color color;
  final String image;
  final Widget route;

  ServicesContainer({
    required this.serviceName,
    required this.color,
    required this.image,
    required this.route,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.all(
          10,
        ),
        //height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.white.withOpacity(0.7),
            //color: color.withOpacity(0.1),
          ),
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              color: Colors.grey.shade500,
              //color: color,
              blurRadius: 19,
              //spreadRadius: 1,
            ),
            BoxShadow(
              offset: Offset(-31, -3),
              color: color.withOpacity(0.4),
              blurRadius: 19,
            ),
          ],
        ),
        width: double.infinity,
        //defining borderRadius.circular for the
        //raisedButton class
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: color),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => route,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              //adding the row inside the raisedButton
              //that takes the service image and service name or info
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.circle,
                        color: color,
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.shade500,
                            blurRadius: 3,
                            spreadRadius: 1,
                          ),
                          // BoxShadow(
                          //   offset: Offset(-1, -1),
                          //   color: Colors.white,
                          //   blurRadius: 3,
                          //   spreadRadius: 1,
                          // )
                        ]),
                    child: Image.asset(
                      image,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      serviceName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
