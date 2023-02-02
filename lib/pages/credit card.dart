import 'dart:ui';

import 'package:aqarat/pages/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class creditcard extends StatefulWidget {
  const creditcard({Key? key}) : super(key: key);

  @override
  State<creditcard> createState() => _creditcardState();
}

class _creditcardState extends State<creditcard> {
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
                      builder: (context) => Payment()),
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
            'إضافة بطاقة جديدة',
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
          padding: EdgeInsets.only(top: 240, right: 30),
          child: Text(
            'رقم البطاقة',
            style: TextStyle(
                color: Color(0XFF6A5E5E),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 270, right: 30, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 360, right: 30),
          child: Text(
            'تاريخ الإنتهاء',
            style: TextStyle(
                color: Color(0XFF6A5E5E),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 390, right: 30, left: 200),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 360, right: 210),
          child: Text(
            'رقم الكود',
            style: TextStyle(
                color: Color(0XFF6A5E5E),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 390, right: 200, left: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 470, right: 30),
          child: Text(
            'الإسم',
            style: TextStyle(
                color: Color(0XFF6A5E5E),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 505, right: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 580, right: 20),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.verified,
                  color: Colors.green,
                ))),
        Padding(
          padding: EdgeInsets.only(top: 590, right: 70),
          child: Text(
            'حفظ تفاصيل البطاقة',
            style: TextStyle(
                color: Color(0XFF6A5E5E),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Container(
          height: 70,
          width: 150,
          margin: EdgeInsets.only(bottom: 0, top: 650, right: 130),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0XFFF002987),
                Color(0XFFF0085CC),
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'إضافة البطاقة',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 150,
          margin: EdgeInsets.only(bottom: 0, top: 110, right: 130),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0XFFF002987),
                Color(0XFFF0085CC),
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              'creditcard',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
