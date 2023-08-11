import 'package:flutter/material.dart';
import 'package:ncaghana/features/aeronauticalServices/aeronauticalService.dart';
import 'package:ncaghana/features/fmServices/view/fm_service.dart';
import 'package:ncaghana/features/ispServices/ispService.dart';
import 'package:ncaghana/features/maritimeServices/martimeService.dart';
import 'package:ncaghana/features/mnoServices/view/mno_service.dart';
import 'package:ncaghana/features/pmrServices/pmrService.dart';
import 'package:ncaghana/features/vsatServices/vsatService.dart';

import '../features/tvServices/view/tv_service.dart';

class ServicesDataModel {
  String serviceName;
  Color color;
  String image;
  Widget screenNavigation;
  int totalAuthorised;

  ServicesDataModel({
    required this.serviceName,
    required this.image,
    this.color = Colors.purple,
    required this.screenNavigation,
    this.totalAuthorised = 00,
  });
}

List<ServicesDataModel> servicesList = [
  ServicesDataModel(
    serviceName: 'Mobile Network Operators',
    image: 'assets/mno3.webp',
    color: Colors.red.shade200,
    screenNavigation: MNOService(),
    totalAuthorised: 4,
  ),
  ServicesDataModel(
    serviceName: 'TV Broadcasting',
    image: 'assets/tv11.png',
    color: Colors.blue.shade200,
    screenNavigation: TvService(),
    totalAuthorised: 152,
  ),
  ServicesDataModel(
    serviceName: 'FM Broadcasting',
    image: 'assets/radio4.png',
    color: Colors.green.shade200,
    screenNavigation: FmService(),
    totalAuthorised: 706,
  ),
  ServicesDataModel(
    serviceName: 'Internet Service Providers',
    image: 'assets/isp1.png',
    color: Colors.purple.shade200,
    screenNavigation: IspService(),
    totalAuthorised: 56,
  ),
  ServicesDataModel(
    serviceName: 'Aeronautical Services',
    image: 'assets/aeroplane foreign 2.png',
    color: Colors.yellow.shade200,
    screenNavigation: AeronauticalService(),
    totalAuthorised: 7,
  ),
  ServicesDataModel(
    serviceName: 'Private Mobile Radios',
    image: 'assets/pmr3.png',
    color: Colors.brown.shade200,
    screenNavigation: PmrService(),
    totalAuthorised: 112,
  ),
  ServicesDataModel(
    serviceName: 'Maritime Services',
    image: 'assets/ship1.png',
    color: Colors.blue.shade200,
    screenNavigation: MaritimeService(),
    totalAuthorised: 37,
  ),
  ServicesDataModel(
    serviceName: 'Very Small Apeture Terminals (VSAT)',
    image: 'assets/vsat6.png',
    color: Colors.purple.shade200,
    screenNavigation: VsatService(),
    totalAuthorised: 80,
  ),
];
