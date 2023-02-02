import 'package:aqarat/pages/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EditScreen.dart';
import 'change_password.dart';


class AdminProfileScreen extends StatefulWidget {
  static const String screenRoute = 'admin_screen';

  @override
  _AdminProfileScreenState createState() => _AdminProfileScreenState();
}

class _AdminProfileScreenState extends State<AdminProfileScreen> {
  String _language = 'ar';
  late User _user;
  late String name = '';
  @override

  @override
  void initState() {
    super.initState();
    // _user = FirebaseAuthController().user;
  }

  @override
  void dispose() {
    super.dispose();
  }
  Future<void> _showMyDialog(bool enable) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return AlertDialog(
                title: Text('تسجيل خروج',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('هل أنت متأكد أنك تريد تسجيل الخروج ',
                        style: TextStyle(color: Colors.grey),
                      ),

//         ),

                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => login()));
                      // //    Navigator.pushReplacementNamed(context, '/sign_in_screen');
                    },
                    child: Text(
                      'نعم',
                      style: TextStyle(color: Color(0xff012468)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'لا',
                      style: TextStyle(color: Colors.grey),
                    ),

                  ),

                ],
              );
            },
          );
        }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'الصفحة الشخصية',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            // child: StreamBuilder<QuerySnapshot>(
            //   stream: FirebaseFirestoreController().readUser(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
            //       List<DocumentSnapshot> documents = snapshot.data!.docs;
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,

                  ),
                  title: Text('تغريد أبو لاشين'),
                  subtitle: Text('Taghrid@gmail.com'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      ProfileSetting(
                        title: 'تعديل الصفحة الشخصية',
                        firstIcon: Icons.person_outline,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                EditScreen()),
                          );

                        },
                      ),
                      ProfileSetting(
                          title: 'تغيير كلمة المرور',
                          firstIcon: Icons.lock_outline,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                  ChangePasswordScreen()),
                            );

                          }

                      ),
                      // ProfileSetting(
                      //   title: 'تواصل معنا',
                      //   firstIcon: Icons.contact_support_outlined,
                      //   onPressed: () {},
                      // ),
                      ProfileSetting(
                        title: 'تسجيل خروج',
                        firstIcon: Icons.logout,
                        onPressed: () {
                          _showMyDialog(true);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),

    );


    //   }else{
    //     return Loading();
    //   }
    // }
  }}


// void showAlertDialog() {
//   var context;
//   showDialog(
//     context: context,
//     barrierColor: Colors.black.withOpacity(0.25),
//     builder: (context) {
//       return AlertDialog(
//         title: Text('تسجيل خروج'),
//         content: Text(
//           'هل أنت متأكد أنك تريد تسجيل الخروج',
//           style: TextStyle(color: Colors.grey),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => login()));
//           //    Navigator.pushReplacementNamed(context, '/sign_in_screen');
//             },
//             child: Text(
//               'نعم',
//               style: TextStyle(color:  Color(0xff012468)),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text(
//               'لا',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

//  Future<void> signOut() async {
//    await FirebaseAuthController().signOut();
//  }
//
//  Users getUserData(DocumentSnapshot snapshot){
//    Users user = Users();
//    user.path = snapshot.id.toString();
//    user.name = snapshot.get('name');
//    user.birthday = snapshot.get('birthday');
//    user.gender = snapshot.get('gender');
//    user.email = snapshot.get('email');
//    user.image = snapshot.get('image');
//    return user;
//  }
// }

class ProfileSetting extends StatelessWidget {
  final String title;
  final IconData firstIcon;
  void Function() onPressed;

  ProfileSetting({
    required this.title,
    required this.firstIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(
        firstIcon,
        color: Color(0xff012468),
        size: 25,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 15,
      ),
    );
  }
}

class ProfileIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  ProfileIcon({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color:Color(0xff012468),
        ),
        SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}


