import 'package:aqarat/pages/Skip.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  static const String screenRoute = 'splash_screen';

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => skip())));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 110,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 112,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/img.png'),
                      )),
                ),
                Positioned(
                  left: 121,
                  top: 279,
                  child: Text(
                    "Homely",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
                Positioned(
                  left: 36,
                  top: 385,
                  child: SizedBox(
                    width: 356,
                    height: 155,
                    child: Text(
                      "إنضم في أي مكان \n إحجز أي عقار وفي أي وقت   ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0x7fffffff),
                        fontSize: 23,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
