import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'adminprofile.dart';
import 'favoriteadmin.dart';
import 'main_admin.dart';

class HomeAdmin extends StatefulWidget {
  static const String screenRoute = 'addh_screen';

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeAdmin(),
    favoriteadmin(),
    AdminProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: IconButton(
              icon: const Icon(
                Icons.notification_add,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MainAdminScreen()));

              }),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.only(bottom:30),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/admin.jpeg'),)),
          // child: _widgetOptions[_selectedIndex],
        ),
      ),
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
            GButton(icon: Icons.home, text: 'الرئيسية',),
            GButton(icon: Icons.favorite, text: 'المفضلة'),
            GButton(icon: Icons.person, text: 'الصفحة الشخصية'),
          ],
        ),
      ),
    );
  }
}
