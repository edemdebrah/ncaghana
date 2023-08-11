import 'package:flutter/material.dart';

import '../../../widgets/tvStationsBox.dart';


class fmStationsListAccra extends StatefulWidget {
  @override
  State<fmStationsListAccra> createState() => _fmStationsListAccraState();
}

class _fmStationsListAccraState extends State<fmStationsListAccra> {
  List stationList = [
    [
      'Multimedia Group Limited',
      'Joy FM',
      'Accra, Kokomlemle',
      '0244111222',
      true,
      true,
    ],
    [
      'Net 2 Broadcasting Limited',
      'Oman FM',
      'Accra, Madina',
      '0244111222',
      true,
      true,
    ],
    [
      'ABC Radio Limited',
      'Asaase FM',
      'Accra, Labone',
      '0244111222',
      true,
      true,
    ],
    [
      'Radio Gold',
      'Radio Gold',
      'Accra, Mambrobi',
      '0244111222',
      true,
      true,
    ],
    [
      'Metropolitan TV Limited',
      'METRO TV',
      'Accra, Kanda',
      '0244111222',
      false,
      true,
    ],
    [
      'Media General Limited',
      'TV3',
      'Accra, Kanda',
      '0244111222',
      true,
      true,
    ],
    [
      'Three Angels Broadcasting Network',
      '3ABN',
      'Accra, Agbelenkpe',
      '0244111222',
      true,
      true,
    ],
  ];

  favButtonPressed(value, index) {
    setState(() {
      stationList[index][5] = !stationList[index][5];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('FM STATIONS LIST'),
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
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff725d4b),
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
              itemCount: stationList.length,
              itemBuilder: (context, index) {
                return TvStationsBox(
                  status: stationList[index][4],
                  location: stationList[index][2],
                  mobile: stationList[index][3],
                  stationName: stationList[index][0],
                  tradeName: stationList[index][1],
                  favorite: stationList[index][5],
                  onPressed: () {
                    favButtonPressed;
                    // print('fav pressed');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
