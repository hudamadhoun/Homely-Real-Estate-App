import 'package:aqarat/pages/profile.dart';
import 'package:flutter/material.dart';
class Abouthomely extends StatefulWidget {
  static const String screenRoute = 'about_screen';

  @override
  State<Abouthomely> createState() => _AbouthomelyState();
}

class _AbouthomelyState extends State<Abouthomely> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  get bottomNavigationBar => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,

        title: Text(
          "عن هوملي",
          style: TextStyle(color: Color(0xff012468), fontSize: 20.0,
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
      body:SingleChildScrollView(
        child:
        Container(

          child:
          Column(children:[
            Padding(  padding: EdgeInsets.only(left: 10,right: 10),
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                //  child: SizedBox.fromSize(
                // size: Size.fromRadius(50), // Image radius
                child: Image.asset('assets/images/ho1.jpg'),

              ),
            ),
            Padding(  padding: EdgeInsets.only(left: 300,top: 20),
              child:
              Text( 'هوملي',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Padding(  padding: EdgeInsets.only(right:20,top: 20),
              child:
              Row(
                  children:[

                    Text( 'تطبيق مجاني يتيح لك إضافة العقارات الخاصة بك',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0
                      ),
                    ),


                  ]),

            ),
            Padding(  padding: EdgeInsets.only(right:20,top: 20),
              child:
              Row(
                  children:[

                    Text( ' عند إتمام عملية تسجيل الدخول ويسعى أيضا لراحة',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0
                      ),
                    ),


                  ]),

            ),

            Padding(  padding: EdgeInsets.only(right:20,top: 20),
              child:
              Row(
                  children:[
                    Text( ' الزبون في اختيار عقاره المناسب  بسهولة وأقل ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0
                      ),
                    ),


                  ]),

            ),
            Padding(  padding: EdgeInsets.only(right:20,top: 20),
              child:
              Row(
                  children:[
                    Text( ' جهد ووقت',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0
                      ),
                    ),


                  ]),

            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(  padding: EdgeInsets.only(left: 260,top: 20,right: 20),
              child:
              Text( 'تواصل معنا ...',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),
              ),

            ),
            SizedBox(
              height: 20.0,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Icon(
                  Icons.call,
                  color: Color(0xFF012468),
                ),
              ),
              SizedBox(
                width: 10.0,),
              Text(
                '970597838997+',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),



            ]),
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
                  Icons.email,
                  color: Color(0xFF012468),
                ),
              ),
              SizedBox(
                width: 10.0,),
              Text(
                'shimaa@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),



            ]),

          ]),
        ),
      ),
    );
  }
}
