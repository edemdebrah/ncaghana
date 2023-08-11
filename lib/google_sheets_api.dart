import 'package:gsheets/gsheets.dart';

class GoogleSheetsApi {
  //creating credentials from google sheet

  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "nca-services-database",
  "private_key_id": "24bcbdeebc2bc4122184392d07638fe0f8d00dee",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCT66SqZGqKvw9e\nvXg8yR4WtG0WCIAcSq9dqpzIaW/Z/ydNbZ9YueDwGzE2m/ZDYg4cjvDwayHv0Veb\nVklcKqkxRCGKnNvaLpNOoF6jBFeAv6xeni2R1Z6QutvTD9Gl0tT8vcNslOhoOJcR\nJSNFnT/V6XYboaHeHiWD+wG9LGaUR1GdItXr968YnnP4RQpMXzWvI4X3FzMBsgO+\nTgVholtLsAMUbg0lJimgnlZRNKUh5dsPaqON8E5gx04oeJF2PUTwv2bLXlion1dO\nvQynSs+nhbXHnjMQPfhIQJJDAbL4DI5nJHeTyXflLdkvRTdRTEbUYow3X5I0DdSd\nh/KWabgdAgMBAAECggEAG7W4Cid3gfhas7/Ap3pxhYVVLhx3i1U+VsigSDbgOjE/\nNpUDlcZ0aeZeKMG8t1DGHfl1D0Syfc90nufiJD7lpRIDSokp8kxpUgBe2iD1F2xQ\nqQTuunQPGUO37Gj5OBwvxAz0cAHRK7z2J8MSQXc8vyDV/EUiIo75Lik2YS7RJJOS\nvc7VIEh3+27Pu5K8F3E1bZjlfGOFSXxlGmfv8ZfzTvqpnGfR67ufTgZSefnbVf3l\nIY7WSlfFUGjn2Tq5RPGyAyQjmz1QUC/EO8vv8hIwj9aTrYhRi6ts6IW898rY0kxf\nSqjBYSJasE8oUYnWGuyhSbGSgJNdDHIfx4kPjeSPIQKBgQDGKLeU8nkZUQeROXLa\nP5sHleiN6rBZzdoBSOme1rDV0UuzTFanBHqrKMtxJa4M7sWGrYmZmWvdDn8fTeUQ\nhFN0OEyvhTsIMeR9OsbHWxdhRhK+Pr7De7F1KhpI8WoSoIKo7IQiWIm5MwXMY7SG\n13fp2Z/eTlVGmtXLVE2aDiXLNQKBgQC/GOM3fAlUKROpH5CIIAGni24TUSE6+jcq\ndPQVmuW997aEzovpwTgOerWLxXLB/YLPoQpZkHfa7trkbiJEVcuPWlcCRU43WPjw\nu3u/7Zex+3WFXiBTXiWIb6WD3C20y3NtLuQPNnVmmm4ZgBk8VdLbgLIeZ11LSipU\n8bckp0puSQKBgQCvQ6IkBlYfkzCbPPGdoXZQPkHjC7mQpGZ2jnO7Pm5Hn4dR/WoC\n7Q5GRp2x5L7Nx35DgUfb5/ukGEdNe8rnUfKyL318HN26gM50CMF539KNAbpgNATr\nx4KMe4GmFIhaE0edexvfeOnPORae0W0BeqAf4JDqwePgv9/qqBS+9lZtJQKBgQC7\nV3HBvlcC6/Y7UheGbCJTF80FIP8763tToy57U8yxLP0BO+BMfMEw6Lm8WgjEB31L\ngew8m/X0az+qvBHZ/mY+lmlAb6NbfV0n3BVYtluGAChZZEq6kEypchLIr30bhm0V\nd+faxh/YQ8N2OnADB3xc9tEoH1uF6SKQ/hr20w6UCQKBgHqORXOF6RcL4fsbA2q/\nT+GGvG0yI8+Epc7gJHwN3W/N90wHQMhGqZIjO6jRl6YkrHkKaDcIuh4AMRusBDnQ\nBxMoByXNEeKy8gE5US9HRr31WroFOdem5YditIT4F64saP0TuPgHe7OkvMSlO7gl\n/SCyZ/hnsT2LDQcKA4NmHqTI\n-----END PRIVATE KEY-----\n",
  "client_email": "nca-services-database@nca-services-database.iam.gserviceaccount.com",
  "client_id": "114832528070174023357",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/nca-services-database%40nca-services-database.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';

//creating spreadsheet id from google sheets

  static final _spreadsheetId = '1R0-P9QOqwi00YQgDkGxyQBmldwRoMLXXV3yhllhli_M';

//initialising Gsheets.
  //we are connectng to the Gsheets from the
  //dev dependency that we imported into pubspec.yaml
  //we connect it to the Google Sheets with the credentials
  //that we downloaded.
  static final gsheets = GSheets(_credentials);

  // ignore: unused_field
  static Worksheet? _worksheet;

  //some variables to keep track of
  static int numberOfTransactions = 0;
  static List<List<dynamic>> currentTransactions = [];
  static bool loading = true;

  //inititialising the worksheet

  Future intit() async {
    //now we need to fetch the spreadsheet by its ID
    //here we use the spreadsheet ID to connect to the
    //specific spreadsheet in your list of google sheets
    final ss = await gsheets.spreadsheet(_spreadsheetId);
    //fetching worksheet by its ID.
    //we need to select the specific worsksheet to
    //pull data from
    _worksheet = ss.worksheetByTitle('servicesWorksheet');

    //testing connection by writing data into a cell
    //in the selected worksheet
  }
}
