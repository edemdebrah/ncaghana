class TvStationsDataModel {
/*[
      'Ghana Broadcasting Corporation',
      'GTV',
      'Accra, Kanda',
      '0244111222',
      true,
      true,
    ],
*/

  String? company_name;
  String? trade_name;
  String? location;
  String? telephone;

  TvStationsDataModel({
    this.company_name,
    this.trade_name,
    this.location,
    this.telephone,
  });
}

List<TvStationsDataModel> tvStationsList = [
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
