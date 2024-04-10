import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';

class logo extends StatefulWidget{
  @override
  State<logo> createState()=> _SplashScreen(); }
    class _SplashScreen extends State<logo> {
      double screenHeight = 0;
      double screenWidth = 0;
      @override
      void initState() {
        super.initState();
        Timer(Duration(seconds: 5), () {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginpage(),),);

        });
      }

      @override
      Widget build(BuildContext context) {
        screenHeight = MediaQuery.of(context).size.height;
        screenWidth = MediaQuery.of(context).size.width;
        return Scaffold(
          body: Center(
            child: Container(
              height: 550,
              width: 550,
              child: Image.asset('assets/images/croplogo.png'),
            ),
          ),
        );
      }
    }