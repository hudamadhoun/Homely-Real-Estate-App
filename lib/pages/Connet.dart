import 'package:fluttertoast/fluttertoast.dart';
import 'package:aqarat/pages/ask%20help.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class Connectwithus extends StatefulWidget {
  const Connectwithus({Key? key}) : super(key: key);

  @override
  State<Connectwithus> createState() => _ConnectwithusState();
}

class _ConnectwithusState extends State<Connectwithus> {
  TextEditingController emailcontroller = new TextEditingController();
  late String _myActivity;
  late String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  // List<DropdownMenuItem<String>> get dropdownItems{
  //   List<DropdownMenuItem<String>> menuItems = [
  //     DropdownMenuItem(child: Text("طلب"),value: "طلب"),
  //     DropdownMenuItem(child: Text("إستفسار"),value: "إستفسار"),
  //     DropdownMenuItem(child: Text("إقتراح"),value: "إقتراح"),
  //     DropdownMenuItem(child: Text("شكوى"),value: "شكوى"),
  //   ];
  //   return menuItems;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: Text(
          "إطلب المساعدة",
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
                MaterialPageRoute(builder: (context) => AskHelp()),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 260),
              child: Text(
                'بريدك الاإلكتروني',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 290),
              child: Text(
                ' نوع الرسالة',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16),
                    child: DropDownFormField(
                      hintText: 'إختر من هنا',
                      value: _myActivity,
                      onSaved: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      dataSource: [
                        {
                          "display": "إستفسار",
                          "value": "إستفسار",
                        },
                        {
                          "display": "طلب",
                          "value": "طلب",
                        },
                        {
                          "display": "إقتراح",
                          "value": "إقتراح",
                        },
                        {
                          "display": "شكوى",
                          "value": "شكوى",
                        },
                      ],
                      textField: 'display',
                      valueField: 'value',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text('حفظ'),
                      onPressed: _saveForm,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(_myActivityResult),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 280),
              child: Text(
                'نص الرسالة',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'إكتب هنا...',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: showToast,
              child: Text(
                'إرسال',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

void showToast() => Fluttertoast.showToast(
    msg: 'تم إرسال الرسالة بنجاح',
    fontSize: 18,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black45);
