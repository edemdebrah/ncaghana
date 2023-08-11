import 'package:flutter/material.dart';

class MnoDataModel {
  Color color1;
  Color color2;
  Color color3;
  String tradeName;
  String companyName;
  String image;
  double voiceSubscription;
  double dataSubscription;

  MnoDataModel({
    required this.color1,
    required this.color2,
    required this.color3,
    this.companyName = 'Company Name',
    this.tradeName = 'Trade Name',
    required this.image,
    required this.dataSubscription,
    required this.voiceSubscription,
  });
}

List<MnoDataModel> mnodata = [
  //List of authorised MNO's
  MnoDataModel(
    color1: Colors.amber.shade400,
    color2: Colors.amber.shade600,
    color3: Colors.amber.shade800,
    // color1: Colors.grey.shade400,
    // color2: Colors.grey.shade600,
    // color3: Colors.grey.shade800,
    tradeName: 'MTN',
    companyName: 'SCANCOM GHANA LIMITED',
    image: 'assets/mtn_logo.png',
    voiceSubscription: 70.01,
    dataSubscription: 77.54,
  ),

  MnoDataModel(
    color1: Colors.red.shade400,
    color2: Colors.red.shade600,
    color3: Colors.red.shade800,
    tradeName: 'TELECEL',
    companyName: 'TELECEL GROUP',
    image: 'assets/telecel.png',
    voiceSubscription: 16.53,
    dataSubscription: 12.74,
  ),

  MnoDataModel(
    color1: Colors.blue.shade400,
    color2: Colors.blue.shade600,
    color3: Colors.blue.shade800,
    tradeName: 'AIRTEL TIGO',
    companyName: 'GOVERNMENT OF GHANA',
    image: 'assets/airtelTigo.png',
    voiceSubscription: 13.46,
    dataSubscription: 9.71,
  ),

  MnoDataModel(
    color1: Colors.green.shade400,
    color2: Colors.green.shade600,
    color3: Colors.green.shade800,
    tradeName: 'GLO',
    companyName: 'GLO MOBILE TECHNOLOGIES',
    image: 'assets/glo.png',
    voiceSubscription: 0,
    dataSubscription: 0,
  ),
];
