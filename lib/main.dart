import 'package:flutter/material.dart';
import './components/appConst.dart';
import './screens/Splash.dart';
import './screens/Home.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  static final String title = "Real Estate App";

  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(MyApp.title),
      // ),
      body: Center(
        child: MaterialApp(
          initialRoute: NavigationRoutes.splash,
          routes: {
            NavigationRoutes.splash: (context) => Splash(),
            NavigationRoutes.home: (context) => Home(),
          },
        ),
      ),
    );
  }
}
