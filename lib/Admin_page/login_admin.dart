import 'package:aqarat/pages/Forgetpassword.dart';
import 'package:aqarat/pages/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'home_admin.dart';


class adminlogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<adminlogin> {
  final _auth = FirebaseAuth.instance;
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  late String email;
  late String password;

  var error;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  late UserCredential userCredential;

  singIn() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showDialog(
              context: context,
              builder: (context) {
                return error;
              });
        } else if (e.code == 'wrong-password') {
          showDialog(
              context: context,
              builder: (context) {
                return error;
              });
        }
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
              ),
              width: 25,
              margin: EdgeInsets.only(bottom: 0, top: 400),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff012468),
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          width: 115,

                          // margin: EdgeInsets.all(),

                          child: LinearProgressIndicator(
                            value: 25,
                            valueColor: new AlwaysStoppedAnimation<Color>(
                              Color(0xff012468),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: emailcontroller,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Enter email";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'البريد الإلكتروني',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(),
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: passwordcontroller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your password';
                            } else {
                              if (value.length < 8) {
                                return 'please long password';
                              } else {
                                return null;
                              }
                            }
                          },
                          onChanged: (value) {
                            password = value;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(),
                            ),
                            suffixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgetpassword()),
                                );
                              },
                              child: Text(
                                ' هل نسيت كلمة المرور؟',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        GestureDetector(
                          onTap: () async {
                            try {
                              final Newuser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeAdmin()));
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Color(0xff012468),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                            child: new Center(
                              child: new TextButton(
                                child:Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => HomeAdmin()));
                                },
                              ),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'لا تملك حساب؟',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blueGrey,

                                //color:Colors.blueGrey,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup()),
                                );
                              },
                              child: Text(
                                ' سجل الآن',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff012468),
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
