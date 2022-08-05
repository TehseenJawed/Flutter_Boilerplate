import 'package:flutter/material.dart';
import '../components/appConst.dart';
import 'innerHome/homeScreen.dart';
import 'innerHome/settingScreen.dart';
import 'innerHome/statisticScreen.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  static int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _body = [
    HomeScreen(),
    Statistics(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ColorSwatchs.primary,
        body: _body[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/home.png"),
                size: 18,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/statistics_active.png"),
                size: 18,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/setting_active.png"),
                size: 18,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
