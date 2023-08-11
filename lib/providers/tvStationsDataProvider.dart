import 'package:flutter/material.dart';

import '../models/tvStationsDataModel.dart';

class TvStationsDataProvider extends ChangeNotifier {
  final List<TvStationsDataModel> _tvStationsList = tvStationsList;
  List<TvStationsDataModel> get tvStations => _tvStationsList;
}
