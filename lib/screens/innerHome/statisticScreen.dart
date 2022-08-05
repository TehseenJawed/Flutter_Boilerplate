import 'package:flutter/material.dart';
import '../../components/appConst.dart';

void main(List<String> args) {
  runApp(Statistics());
}

class Statistics extends StatefulWidget {
  @override
  State<Statistics> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ColorSwatchs.primary,
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ]),
        ),
      ),
    );
  }
}
