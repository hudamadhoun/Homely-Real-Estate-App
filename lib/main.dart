import 'package:aqarat/map_screen.dart';
import 'package:aqarat/pages/Add%20property.dart';
import 'package:aqarat/pages/about%20homley.dart';
import 'package:aqarat/pages/chat.dart';
import 'package:aqarat/pages/confirmpass.dart';
import 'package:aqarat/pages/detailsprofile.dart';
import 'package:aqarat/pages/edit_profile.dart';
import 'package:aqarat/pages/login_screen.dart';
import 'package:aqarat/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Admin_page/adminprofile.dart';
import 'Admin_page/home_admin.dart';
import 'Owner_page/home_aqar/widgets/home/home_body.dart';
import 'Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'User_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBKySKVr7WnfPgeILvcilC5PuYNmjOxqdI",
          appId: "1:79538638859:android:6881c0ccb2d658b7dbf70e",
          projectId: "aqarat-180ac",
          messagingSenderId: '79538638859',
          storageBucket: 'gs://aqarat-180ac.appspot.com'));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : splash.screenRoute,
      routes: {
        ChatScreen.screenRoute: (context) => ChatScreen(),
        Confirmpassword.screenRoute: (context) => Confirmpassword(),
        Map.screenRoute: (context) => Map(),
        loginuser.screenRoute: (context) => loginuser(),
        HomeBody.screenRoute: (context) => HomeBody(),
        HomeBodyv.screenRoute: (context) => HomeBody(),
        HomeAqar.screenRoute: (context) => HomeAqar(),
        splash.screenRoute: (context) => splash(),
        Detailsprofile.screenRoute: (context) => Detailsprofile(),
        Addproperty.screenRoute: (context) => Addproperty(),
        Abouthomely.screenRoute: (context) => Abouthomely(),
        Editprofile.screenRoute: (context) => Editprofile(),
        AdminProfileScreen.screenRoute: (context) => AdminProfileScreen(),
        HomeAdmin.screenRoute: (context) => HomeAdmin(),

      },
    );
  }
}
