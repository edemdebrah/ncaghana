//this page displays the categories of TV stations
//with their respective stats on Authorised, off-air
//and on-air status. it is called on the main tv
//broadcasting page

import 'package:flutter/material.dart';

class TvServicesList extends StatelessWidget {
  final String serviceName;
  final String description;
  final int authorised;
  final int onair;
  final int offair;

  const TvServicesList(
      {super.key, required this.serviceName,
      required this.description,
      required this.authorised,
      required this.onair,
      required this.offair});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 120,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                serviceName,
                style: TextStyle(
                  fontSize: 16,
                  //color: Colors.white,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  //color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    color: Color.fromARGB(255, 1, 63, 3),
                    child: Text(
                      authorised.toString() + ' Authorised',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    color: Colors.brown,
                    child: Text(
                      onair.toString() + " On-Air",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    color: Color.fromARGB(255, 201, 152, 6),
                    child: Text(
                      offair.toString() + " Off-Air",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
