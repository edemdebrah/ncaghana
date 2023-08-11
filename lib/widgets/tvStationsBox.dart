import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TvStationsBox extends StatelessWidget {
  //defining the properties to be received in this file

  final bool favorite;
  final bool status;
  final String stationName;
  final String tradeName;
  final String location;
  final String mobile;
  final VoidCallback onPressed;

  //creating Named Argument constructors to receive values when this
  //class is called in another file
  TvStationsBox({
    super.key,
    required this.status,
    required this.location,
    required this.mobile,
    required this.stationName,
    required this.tradeName,
    required this.favorite,
    required this.onPressed,
  });

//creating a property 'statusinfo' to initialise the stations status
  String statusinfo = 'active';

//creating the function to reverse the value of 'statusinfo'
  String statusinfo2(index) {
    return status ? statusinfo = ' Active' : statusinfo = ' Expired';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          color: status ? Colors.green[200] : Colors.red[200],
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
              //creating the favorite button in a row and algning it to the right
              //when tapped, favorite button color changes
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      favorite ? Icons.favorite : Icons.favorite_border,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Text(
                stationName,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                tradeName,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
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
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
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
                        boxShadow: [
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Authorisation status:',
                  ),
                  Text(
                    statusinfo2(status),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
