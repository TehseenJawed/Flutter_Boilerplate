import 'package:flutter/material.dart';
import '../../components/appConst.dart';

void main(List<String> args) {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ColorSwatchs.primary,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Wrap(direction: Axis.horizontal, spacing: 160, children: [
                Text("Study",
                    style: TextStyle(
                        color: ColorSwatchs.white,
                        fontSize: TextSizes.heading_md)),
                Spacer(flex: 1),
                Image.asset('assets/settings.png', width: 18),
              ]),
              Column(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
