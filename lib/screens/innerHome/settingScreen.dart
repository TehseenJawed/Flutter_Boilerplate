import 'package:flutter/material.dart';
import '../../components/appConst.dart';

void main(List<String> args) {
  runApp(Setting());
}

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ColorSwatchs.primary,
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: []),
        ),
      ),
    );
  }
}
