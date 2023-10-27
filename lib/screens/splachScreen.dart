import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/constants/colors.dart';
import 'package:foodpanda/screens/home_Screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2), (){
        Navigator.pushReplacementNamed(
            context,
            HomeScreen.routeName,
        );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scheme.primary,
      body: Stack(
        alignment: Alignment.center,
        children:
        [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
              ),
            ),
          ),
          const Positioned(
              bottom: 50,
              child: CupertinoActivityIndicator(
                color: Colors.white,
              ),
          ),
        ],
      ),
    );
  }
}
