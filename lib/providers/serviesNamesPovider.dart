import 'package:flutter/material.dart';
import 'package:ncaghana/models/servicesDataModel.dart';

class ServicesNamesProvider extends ChangeNotifier {
  final List<ServicesDataModel> _services = servicesList;
  List<ServicesDataModel> get services => _services;
}
