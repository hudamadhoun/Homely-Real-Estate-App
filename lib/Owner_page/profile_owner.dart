import 'dart:async';

import 'package:aqarat/pages/Add%20property.dart';
import 'package:aqarat/pages/about%20homley.dart';
import 'package:aqarat/pages/ask%20help.dart';
import 'package:aqarat/pages/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import '../pages/edit_profile.dart';
import 'login_owner.dart';

class Profileo extends StatefulWidget {
  const Profileo({Key? key}) : super(key: key);

  @override
  State<Profileo> createState() => _ProfileoState();
}

class _ProfileoState extends State<Profileo> {
  Future<void> _showMyDialog(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return AlertDialog(
                title: Text(
                  'تسجيل خروج',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                        'هل أنت متأكد أنك تريد تسجيل الخروج ',
                        style: TextStyle(color: Colors.grey),
                      ),

//         ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ownerlogin()));
                      //    Navigator.pushReplacementNamed(context, '/sign_in_screen');
                    },
                    child: Text(
                      'نعم',
                      style: TextStyle(color: Color(0xff012468)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'لا',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "الملف الشخصي",
          style: TextStyle(
              color: Color(0xff012468),
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            color: Color(0xff012468),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Addproperty()),
              );
            },
          ),
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 80, top: 10, right: 80, bottom: 320),
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
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: 200),
          child: Container(
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Color(0xFF012468),
                      ),
                    ),
                    Text(
                      '  تعديل الملف الشخصي',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color(0xff012468),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Editprofile()),
                          );
                        }),
                  ]),
                  Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.account_balance_outlined,
                        color: Color(0xFF012468),
                      ),
                    ),
                    Text(
                      '  عن هوملي',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color(0xff012468),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Abouthomely()),
                          );
                        }),
                  ]),
                  Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.question_answer_outlined,
                        color: Color(0xFF012468),
                      ),
                    ),
                    Text(
                      '  إطلب المساعدة',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color(0xff012468),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AskHelp()),
                          );
                        }),
                  ]),
                  Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.logout,
                        color: Color(0xFF012468),
                      ),
                    ),
                    Text(
                      '  تسجيل الخروج',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color(0xff012468),
                        onPressed: () {
                          _showMyDialog(true);
                        }),
                  ]),
                  Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
