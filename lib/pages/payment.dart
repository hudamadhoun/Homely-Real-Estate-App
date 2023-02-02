import 'dart:ui';

import 'package:aqarat/pages/credit%20card.dart';
import 'package:aqarat/pages/mastercard.dart';
import 'package:aqarat/pages/paypal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailsprofile.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Color(0XFFF2D54A0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50, right: 20),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detailsprofile()),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 60, right: 70),
          child: Text(
            'طرق الدفع',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 662.5,
          margin: EdgeInsets.only(bottom: 0, top: 150),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 240, right: 300),
          child: Image.asset(
            'assets/images/paypal .png',
            width: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 240, right: 150),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>Paypal()));

            },
            child: Text(
              'PayPal',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0Xff6A5E5E)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 340, right: 300),
          child: Image.asset(
            'assets/images/credit.png',
            width: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 340, right: 50),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => creditcard()));

            },
            child: Text(
              'credit/Debit card',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0Xff6A5E5E)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 460, right: 300),
          child: Image.asset(
            'assets/images/mastercard.png',
            width: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 460, right: 90),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => mastercard()));

            },
            child: Text(
              'mastercard',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0Xff6A5E5E)),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 150,
          margin: EdgeInsets.only(bottom: 0, top: 110, right: 130),
          decoration: BoxDecoration(
            color: Color(0XFFF012367),
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/payment.png',
              ),
            ),
          ),
        ),
        //       Container(
        //         height: 180,
        //         margin: EdgeInsets.only(bottom: 0,top: 650),
        //         decoration: BoxDecoration(
        //           color: Color(0XFFF012367),
        //           borderRadius: BorderRadius.only(
        //               topRight: Radius.circular(30.0),
        //               topLeft: Radius.circular(30.0)),),
        //       ),
        //       Container(
        //         height: 70,
        //         width: 100,
        //         margin: EdgeInsets.only(bottom: 0,top: 690,right: 140),
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(10
        //
        //       ),
        //
        // ),
        // child:Center(child:
        // TextButton(
        // onPressed: () {  },
        // child: Text(
        // "إدفع",
        // style: TextStyle(fontSize: 20,  color: Color(0XFFF012367), fontWeight: FontWeight.bold,),
        // ),
        // ),
        //       ),
        //       ),
      ]),
    );
  }
}
