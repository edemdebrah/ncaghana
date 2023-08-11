import 'package:flutter/material.dart';
import 'package:ncaghana/features/onBoardingScreen/views/onBoardingScreenBegin.dart';
import 'package:ncaghana/google_sheets_api.dart';
import 'package:ncaghana/providers/mnoDataProvider.dart';
import 'package:ncaghana/providers/serviesNamesPovider.dart';
import 'package:ncaghana/providers/tvStationsDataProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleSheetsApi().intit();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ServicesNamesProvider>(
          create: (context) => ServicesNamesProvider(),
        ),
        ChangeNotifierProvider<MnoDataProvider>(
          create: (context) => MnoDataProvider(),
        ),
        ChangeNotifierProvider<TvStationsDataProvider>(
          create: (context) => TvStationsDataProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NCA GHANA',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const OnBoardingScreenBegin(),
    );
  }
}
