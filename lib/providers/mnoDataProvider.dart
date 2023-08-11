import 'package:flutter/material.dart';
import 'package:ncaghana/models/mnoDataModel.dart';

class MnoDataProvider extends ChangeNotifier {
  final List<MnoDataModel> _mnoData = mnodata;
  List<MnoDataModel> get mnoData => _mnoData;
}
