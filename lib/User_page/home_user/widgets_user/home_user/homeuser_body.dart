import 'package:aqarat/pages/Add%20property.dart';
import 'package:aqarat/pages/login_screen.dart';
import 'package:aqarat/pages/profileu.dart';
import 'package:aqarat/pages/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../Owner_page/favorite/widgets/home/favorite_body.dart';
import '../../../../pages/chat.dart';
import '../../../../pages/profile.dart';
import '../../home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeBodyv extends StatefulWidget {
  static const String screenRoute = 'home_screen';

  @override
  State<HomeBodyv> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBodyv> {
  int _selectedIndex = 0;
  final _auth = FirebaseAuth.instance;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePagev(),
    favorite(),
   Profileu(),
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
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
            GButton(icon: Icons.favorite, text: 'المفضلة'),
            GButton(icon: Icons.person, text: 'الصفحة الشخصية'),
          ],
        ),
      ),
    );
  }
}
