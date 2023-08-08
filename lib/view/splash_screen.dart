import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:melkino/constant/color.dart';
import 'package:melkino/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: FadeIn(
                child: Text(
                  "ملکینو",
                  style: TextStyle(
                      color: MyColor.pink, fontFamily: 'Kenar', fontSize: 40),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SpinKitSpinningLines(
              color: Color.fromARGB(21, 255, 83, 83),
              size: 300.0,
            )
          ],
        ),
      ),
    );
  }
}
