import 'package:aqarat/pages/profile.dart';
import 'package:flutter/material.dart';

import 'Connet.dart';

class AskHelp extends StatefulWidget {
  const AskHelp({Key? key}) : super(key: key);

  @override
  State<AskHelp> createState() => _AskHelpState();
}

class _AskHelpState extends State<AskHelp> {
  late final String title;



  Future<void> _showMyDialog(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                'هل هوملي مجاني ؟',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('نعم إنه تطبيق مجاني حاليا يسعى لتوفير '),
                    Text('الوقت والجهد وسوف يتم التطوير عليه لاحقا لخدمتكم'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

  Future<void> _showMyDialog1(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                ' كيف أصل للعقار المناسب ؟',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        ' تم تقسيم عقارات التطبيق من حيث النوع الى أربع أقسام يمكنك اختيار القسم الذي تريده والبحث على العقار المناسب لك من حيث المواصفات والسعر حيث أنه يتم إرفاق جميع مواصفات كل عقار بالتفصيل '),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

  Future<void> _showMyDialog2(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                ' ماذا أستفيد من التسجيل  في التطبيق ؟',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        'عند امتلاك عضوية على هوملي  يتيح لك استخدام زر إضافة العقار بكل سهولة'),
                    Text('حيث أنه بلا عضوية لا يمكنك إضافة عقار عالتطبيق'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

  Future<void> _showMyDialog3(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                ' كيف أحفظ العقار في مفضلتي ؟',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        'في حال انك قد انجذبت لأكثر من عقار وتريد المقارنة بينهم والرجوع إليهم لاحقا يمكنك تميز هذا العقار عن طريق الضغط على زر أحببتي وسوف يتم نقل هذا العقار تلقائي الي صفحة المفضلة'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

  Future<void> _showMyDialog4(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                ' وجدت عقار مناسب  كيف أتصل بالمالك ؟ ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        'يوجد لدى كل عقار مواصفات ووصف خاصة به وفي أسفل صفحة العقار يوجد أكثر من طريقة للتواصل مع المالك أما من خلال هوملي يمكنك مراسلة المالك أو لجعلك أكتر اطمئنانا يمكنك مراسلة المالك خارج التطبيق'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

  Future<void> _showMyDialog5(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                ' الابلاغ عن معلومات  غير صحيحة ؟',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        'يمكنك التوجه إلى بند أريد المساعدة وطرح مشكلتك وسيتم التواصل معك من خلال الدعم الفني وحل مشكلتك'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    child: Text('إغلاق.'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            );
          });
        });
  }

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
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog(false);
                    },
                    child: Text(
                      ' هل هوملي مجاني ؟',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog1(false);
                    },
                    child: Text(
                      ' كيف أصل للعقار المناسب ؟',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog2(false);
                    },
                    child: Text(
                      ' ماذا أستفيد من التسجيل  في التطبيق ؟ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog3(false);
                    },
                    child: Text(
                      ' كيف أحفظ العقار في مفضلتي ؟',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog4(false);
                    },
                    child: Text(
                      ' وجدت عقار مناسب  كيف أتصل بالمالك ؟ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _showMyDialog5(false);
                    },
                    child: Text(
                      ' الابلاغ عن معلومات  غير صحيحة ؟ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF012468),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Connectwithus()),
                      );
                    },
                    child: Text(
                      'أريد المساعدة ...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
          ),
        )
      ]),
    );
  }
}
