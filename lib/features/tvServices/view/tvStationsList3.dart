import 'package:flutter/material.dart';

import 'package:ncaghana/models/tvStationsDataModel.dart';
import 'package:ncaghana/providers/tvStationsDataProvider.dart';
import 'package:ncaghana/widgets/tv_station_box2.dart';
import 'package:provider/provider.dart';

class TvStationsList3 extends StatefulWidget {
  @override
  State<TvStationsList3> createState() => _TvStationsList3State();
}

class _TvStationsList3State extends State<TvStationsList3> {
  //creating the list of details of TV Stations
  /* 
  status: stationList[index][4],
  location: stationList[index][2],
  mobile: stationList[index][3],
  stationName: stationList[index][0],
  tradeName: stationList[index][1],
  favorite: stationList[index][5],
  OnPressed: () { favButtonPressed };
  */

  static List<TvStationsDataModel> stationList = [
    TvStationsDataModel(
      company_name: 'Ghana Broadcasting Corporation',
      trade_name: 'GTV',
      location: 'Accra',
      telephone: '0244111222',
    ),
    TvStationsDataModel(
      company_name: 'Ghana Broadcasting Corporation',
      trade_name: 'GTV SPORTS',
      location: 'Accra',
      telephone: '0244111222',
    ),
    TvStationsDataModel(
      company_name: 'Ghana Broadcasting Corporation',
      trade_name: 'GTV GOVERNMENT',
      location: 'Accra',
      telephone: '0244111222',
    ),
    TvStationsDataModel(
      company_name: 'Ghana Broadcasting Corporation',
      trade_name: 'GTV LIFESTYLE',
      location: 'Accra',
      telephone: '0244111222',
    ),
    TvStationsDataModel(
      company_name: 'Media General Limited',
      trade_name: 'TV3',
      location: 'Accra',
      telephone: '0244111222',
    ),
    TvStationsDataModel(
      company_name: 'Metropolitant Network Limited',
      trade_name: 'Metro TV',
      location: 'Accra',
      telephone: '0244111222',
    ),
  ];

  //function to display list

  List display_list = List.from(stationList);

  //function to search list

  void update_list(String value) {
    setState(() {
      display_list = stationList
          .where((element) =>
              element.trade_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var tvStations = context.watch<TvStationsDataProvider>().tvStations;
/*
    List display_list = List.from(tvStations);

    //function to search list

    void update_list(String value) {
      setState(() {
        display_list = tvStations
            .where((element) =>
                element.trade_name!.toLowerCase().contains(value.toLowerCase()))
            .toList();
      });
    }
*/
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('TV STATIONS LIST'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    )
                  ]),
              height: 60,
              child: TextField(
                onChanged: (value) => update_list(value),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 30,
                  ),
                  hintText: 'Search for a TV Station',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 800,
            child: ListView.builder(
              itemCount: display_list.length,
              itemBuilder: (context, index) {
                // ignore: unused_local_variable
                final tvStationsCurrentIndex = tvStations[index];
                return TvStationsBox2(
                  location: display_list[index].location!,
                  mobile: display_list[index].telephone!,
                  stationName: display_list[index].company_name!,
                  tradeName: display_list[index].trade_name!,
                  // location: tvStationsCurrentIndex.location!,
                  // mobile: tvStationsCurrentIndex.telephone!,
                  // stationName: tvStationsCurrentIndex.company_name!,
                  // tradeName: tvStationsCurrentIndex.trade_name!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
