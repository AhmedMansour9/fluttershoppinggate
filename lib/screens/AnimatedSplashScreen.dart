import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttershoppinggate/Constant/Constant.dart';


class AnimatedSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(LOGIN);
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child:  DecoratedBox(

          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/splash.png"), fit: BoxFit.fill),
          ),
//      child: Center(child: FlutterLogo(size: 300)),
        ),
      )
    );


  }
}