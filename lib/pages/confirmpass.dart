import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';

class Confirmpassword extends StatefulWidget {
  static const String screenRoute = 'confirm_screen';

  @override
  State<Confirmpassword> createState() => _ConfirmpasswordState();
}

class _ConfirmpasswordState extends State<Confirmpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white, actions: [
        IconButton(
          icon: Icon(Icons.arrow_forward,size: 30,),
          color: Color(0xff012468),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => loginuser()),
            );
          },
        ),
      ]),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/images/confirmpass.png"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "تأكيد كلمة المرور",
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff012468),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "أدخل الرمز الذي تم إرساله إلى \nرقم الموبايل",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Flexible(
                        child: new TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Flexible(
                        child: new TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Flexible(
                        child: new TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Flexible(
                        child: new TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color(0xff012468),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Text(
                        "إعادة الإرسال",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
/*decoration: InputDecoration(
border: new OutlineInputBorder(
borderRadius: new BorderRadius.circular(10.0),
borderSide: new BorderSide(),)),

keyboardType: TextInputType.number,
inputFormatters: [FilteringTextInputFormatter.digitsOnly],*/
