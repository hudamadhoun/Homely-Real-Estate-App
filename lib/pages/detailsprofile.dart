import 'dart:ui';

import 'package:aqarat/pages/payment.dart';
import 'package:flutter/material.dart';
import '../Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'chat.dart';

class Detailsprofile extends StatefulWidget {
  static const String screenRoute = 'details_screen';

  const Detailsprofile({Key? key}) : super(key: key);

  @override
  State<Detailsprofile> createState() => _DetailsprofileState();
}

class _DetailsprofileState extends State<Detailsprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
              color: Color(0xff012468),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeBody()),
                );
              },
            ),
          ),
        ),
        body: Stack(children: [
          Padding(
            padding: EdgeInsets.only(left: 80, right: 80, bottom: 320),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(130),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/user.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Huda Elmadhoun",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFF8D29)),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 170, right: 30),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffA6A5A5),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: TextButton(
                      child: Text(
                        "إيجار",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff012468),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Payment()));
                      },
                    ),
                  )),
              SizedBox(
                width: 60,
              ),
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0XFF012367),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextButton(
                    child: Text(
                      "مراسلة",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                              ChatScreen()));
                    },
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 230, right: 30),
            child: Text(
              'العقارات المضافة : ',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 260),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                //  child: SizedBox.fromSize(
                // size: Size.fromRadius(50), // Image radius
                child: Image.asset('assets/images/ho1.jpg'),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 2, top: 530),
                child: Container(
                  width: 170,
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/office3.jpg'),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 530),
                child: Container(
                  width: 170,
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/land.jpg'),
                  ),
                ),
              ),
            ),
          ]
          ),
        ]),

    );
  }
}
