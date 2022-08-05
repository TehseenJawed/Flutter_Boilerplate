import 'package:flutter/material.dart';
import '../components/appConst.dart';

void main(List<String> args) {
  runApp(Splash());
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splash> {
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
                Image.asset(
                  "assets/logo.png",
                  width: 300,
                ),
                const SizedBox(height: 20),
                Text(
                  "The Future to",
                  style: TextStyle(
                      color: ColorSwatchs.white,
                      fontSize: TextSizes.heading_lg,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Real Estate App",
                  style: TextStyle(
                      color: ColorSwatchs.white,
                      fontSize: TextSizes.heading_lg,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NavigationRoutes.home);
                  },
                  child: Text("Start Now",
                      style: TextStyle(
                        color: ColorSwatchs.white,
                      )),
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor:
                        MaterialStateProperty.all<Color>(ColorSwatchs.orange),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 13, horizontal: 80),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
