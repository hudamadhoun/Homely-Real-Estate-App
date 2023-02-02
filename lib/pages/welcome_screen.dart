import 'package:flutter/material.dart';

import '../Admin_page/login_admin.dart';
import '../Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import '../Owner_page/login_owner.dart';
import '../User_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'login_screen.dart';

bool isguest = true;
class welcome extends StatefulWidget {
  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  Future<void> _showMyDialog(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return AlertDialog(
                title: Text('تسجيل دخول',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('تسجيل دخول إلى التطبيق بصفتك',
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
                          MaterialPageRoute(
                              builder: (context) => ownerlogin()));
                      //    Navigator.pushReplacementNamed(context, '/sign_in_screen');
                    },
                    child: Text(
                      'مزود خدمة',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      isguest = false ;
                      print(isguest);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => loginuser()));
                    },
                    child: Text(
                      'مستخدم',
                      style: TextStyle(color: Colors.grey),
                    ),

                  ),
                  TextButton(
                    onPressed: () {

                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => adminlogin()));
                    },
                    child: Text(
                      'مشرف',
                      style: TextStyle(color: Colors.grey),
                    ),

                  ),


                ],
              );
            },
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.cover

            )),
        child: Stack(
          children: [
            Positioned(
              left: 300,
              top: 700,
              child: Container(
                width: 30,
                height: 30,
              ),
            ),
            Positioned(
              left: 160,
              top: 660,
              child: SizedBox(
                width: 153,
                height: 41,
                child: Text(
                  "هل أنت زائر ؟",
                  style: TextStyle(
                    color: Color(0xff938888),
                    fontSize: 25,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 80,
              top: 655,
              child: TextButton(
                child:Text(
                "اضغط هنا",
                style: TextStyle(
                  color: Color(0xff012367),
                  fontSize: 25,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w700,
                ),
              ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeBodyv()));
                },
            ),
            ),
            Positioned(
              left: 95,
              top: 710,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _showMyDialog(true);
                    },
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => login()));

                    child: Container(
                      width: 200,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color(0xff012367),
                      ),
                      padding: const EdgeInsets.only(
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              _showMyDialog(true);
                            },

                            child: Text('تسجيل دخول',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
