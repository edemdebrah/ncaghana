import 'package:flutter/material.dart';

import '../features/tvServices/view/tv_service.dart';

class NewsCard extends StatelessWidget {
  // //[Image(icon.png), MainInfo, ExtraInfo]

  final String imageIcon;
  final String mainInfo;
  final String extraInfo;

  NewsCard({
    required this.imageIcon,
    required this.mainInfo,
    required this.extraInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        //code to cut the edges of the rectangle round
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TvService(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Container to hold images
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          //color: Colors.white,
                          height: 38,
                          child: Image.asset(
                            imageIcon,
                            //color: Colors.purple[300],
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 18,
                      ),

                      //Colum to Hold main text and other info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(mainInfo,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,

                                //color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis),
                          Text(
                            extraInfo,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Icon Button to show arrow to right - faded

                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 32,
                    color: Colors.grey[400],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
