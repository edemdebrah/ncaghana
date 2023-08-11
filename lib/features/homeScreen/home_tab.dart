import 'package:flutter/material.dart';
import 'package:ncaghana/features/allServicesScreen/allServices.dart';


import '../../providers/serviesNamesPovider.dart';
import '../../widgets/logo.dart';
import '../../widgets/news_card.dart';
import '../../widgets/services_card.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List servicesForYou = [
    //[serviceName, jobTitle, logoImagePath, totalAuthorised]

    1,
    2,
    3,
    4,
    5,
  ];
  //New List
  List newsForYou = [
    //[Image(icon.png), MainInfo, ExtraInfo]
    [
      'assets/leadership.png',
      'Leadership of the NCA',
      'Board and Management',
    ],
    [
      'assets/law2.png',
      'Electronic Communic',
      'ECA, 775, 2008',
    ],
    [
      'assets/conditions2.png',
      'Frequeny Allocation Table',
      'FM & TV Services',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    //provider
    var services = context.watch<ServicesNamesProvider>().services;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                // defining the logo widget which has its properties designed in the logo.dart
                Logo(),
                //leaving a vertical space of 30px
                SizedBox(
                  height: 20,
                ),
                //defining Textfield with a lil description about the NCA

                //defining the search bar
                //SearchBar2(),
                // SizedBox(
                //   height: 20,
                // ),
                //SearchBar(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Services Regulated',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllServices(),
                          ),
                        );
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //defining the list of regulated services in scrollable row
                Container(
                  height: 140,
                  //color: Color.fromARGB(255, 4, 54, 95),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: servicesForYou.length,
                    itemBuilder: (context, index) {
                      final servicesCurrentIndex = services[index];
                      return ServicesCard(
                        serviceName: servicesCurrentIndex.serviceName,
                        totalAuthorised: servicesCurrentIndex.totalAuthorised,
                        logoImagePath: servicesCurrentIndex.image,
                        pageRoute: servicesCurrentIndex.screenNavigation,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Key Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      itemCount: newsForYou.length,
                      itemBuilder: (context, index) {
                        return NewsCard(
                          imageIcon: newsForYou[index][0],
                          mainInfo: newsForYou[index][1],
                          extraInfo: newsForYou[index][2],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
