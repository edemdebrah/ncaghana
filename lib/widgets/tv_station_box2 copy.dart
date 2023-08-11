import 'package:flutter/material.dart';

class TvStationsBox2 extends StatelessWidget {
  //defining the properties to be received in this file

  final String stationName;
  final String tradeName;
  final String location;
  final String mobile;

  //creating Named Argument constructors to receive values when this
  //class is called in another file
  const TvStationsBox2({
    super.key,
    required this.location,
    required this.mobile,
    required this.stationName,
    required this.tradeName,
  });

//creating a property 'statusinfo' to initialise the stations status
  final String statusinfo = 'active';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.green[200],
          border: Border.all(
            width: 1.5,
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stationName,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                tradeName,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1.5,
                            color: Colors.green,
                          )),
                      height: 50,
                      //color: Colors.red,
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/location7.png',
                            height: 20,
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      //color: Colors.red,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.green,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 5),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-1, -1),
                              blurRadius: 5),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/location7.png',
                                height: 20,
                              ),
                              Text(
                                mobile,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
