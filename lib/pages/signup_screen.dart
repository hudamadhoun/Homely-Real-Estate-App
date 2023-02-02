import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  TextEditingController? emailInputController;
  TextEditingController? nameInputController;
  TextEditingController? pwdInputController;
  TextEditingController? phoneInputController;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    emailInputController = TextEditingController();
    nameInputController = TextEditingController();
    pwdInputController = TextEditingController();
    phoneInputController = TextEditingController();
    super.initState();
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
              width: 20,
              margin: EdgeInsets.only(bottom: 0, top: 200),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' إنشاء حساب',
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
                          controller: nameInputController,
                          obscureText: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال الاسم';
                            } else if (value.length < 6) {
                              return 'يجب أن يكون الاسم أطول من 6 أحرف';
                            } else {
                              return '';
                            }
                          },
                          keyboardType: TextInputType.text,
                          onChanged: null,
                          decoration: InputDecoration(
                            labelText: 'اسم المستخدم',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(),
                            ),
                            suffixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: emailInputController,
                          obscureText: false,
                          validator: (value) {
                            RegExp regex = new RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال الايميل ';
                            } else if (!regex.hasMatch(value)) {
                              return ' البريد الإلكتروني غير صالح';
                            } else {
                              return '';
                            }
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
                          controller: phoneInputController,
                          obscureText: false,
                          validator: (value) {
                            RegExp regex = new RegExp(
                                r'^(?:[+0][1-9])?[0-9]{10,12}$');
                                if (value!.isEmpty)
                            {
                              return 'الرجاء ادخال رقم الهاتف ';
                            } else if (!regex.hasMatch(value)) {
                            return ' رقم الهاتف غير صالح';
                            } else {
                            return '';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'رقم الموبايل',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(),
                            ),
                            suffixIcon: Icon(
                              Icons.phone,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: pwdInputController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال كلمة المرور';
                            } else if (value.length < 6) {
                              return 'يجب أن تكون كلمة المرور أطول من 6 أحرف';
                            } else {
                              return '';
                            }
                          },
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
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'تأكيد كلمة المرور',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(),
                            ),
                            suffixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginuser()),
                            );
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Color(0xff012468),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                            child: new Center(
                              child: new Text(
                                "تسجيل",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
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
                              ' هل تملك حساب بالفعل؟',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blueGrey,

                                //color:Colors.blueGrey,
                              ),
                            ),

                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginuser()),
                                );
                              },
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff012468),
                                ),
                              ),
                            ),
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
