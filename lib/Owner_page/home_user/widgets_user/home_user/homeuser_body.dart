import 'package:aqarat/pages/Add%20property.dart';
import 'package:aqarat/pages/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../favorite/widgets/home/favorite_body.dart';
import '../../home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeBody extends StatefulWidget {
  static const  String screenRoute = 'home_screen';

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
     HomePage(),
     favorite(),
     Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrent();
  }

  final _auth = FirebaseAuth.instance;
  late User LoginUser;

  void getCurrent() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        LoginUser = user;
        print(LoginUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        child: GNav(
          gap: 8,
          onTabChange: _onItemTapped,
          color: Colors.grey,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xF2012367),
          padding: EdgeInsets.all(10),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'الرئيسية',
            ),
            GButton(
                icon: Icons.favorite,
                text: 'المفضلة'),
            GButton(
                icon: Icons.person,
                text: 'الصفحة الشخصية'),

          ],

        ),
      ),
    );
  }
}
