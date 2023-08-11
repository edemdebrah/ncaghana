import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ncaghana/features/infoScreen/view/infoScreen.dart';

import 'package:ncaghana/features/monitoringScreen/view/monitoringScreen.dart';
import 'package:ncaghana/features/allServicesScreen/allServices.dart';

import 'features/homeScreen/home_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  final List _pageRoutes = <Widget>[
    const HomeTab(),
    const AllServices(),
    const MonitoringScreen(),
    const InfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[800],
      body: _pageRoutes[_selectIndex],
      bottomNavigationBar: Container(
        color: Colors.grey.shade800,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: GNav(
              color: Colors.white,
              backgroundColor: Colors.grey.shade800,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey,
              gap: 12,
              duration: const Duration(microseconds: 1000),
              padding: const EdgeInsets.all(16),
              tabBorder: Border.all(
                width: 1.5,
                color: Colors.white,
              ),
              selectedIndex: _selectIndex,
              onTabChange: (index) {
                setState(() {
                  _selectIndex = index;
                  debugPrint(index.toString());
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'HOME',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'SERVICES',
                ),
                GButton(
                  icon: Icons.monitor,
                  text: 'MONITORING',
                ),
                // GButton(
                //   icon: Icons.cell_tower,
                //   text: 'ABOUT',
                // ),
                GButton(
                  icon: Icons.info,
                  text: 'ABOUT',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
