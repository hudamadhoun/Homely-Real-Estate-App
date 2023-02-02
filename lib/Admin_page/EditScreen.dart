

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import 'Widgets/lite_edit.dart';


class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  XFile? pickedImage;
  XFile? pickedImage2;
  ImagePicker imagePicker = ImagePicker();
  late String selectedImage;

  @override
  void initState() {
    selectedImage = '';
    // _user = FirebaseAuthController().user;
    // _users = Users();
    // _email = TextEditingController(text:  'البريد الإلكتروني');
    // _name = TextEditingController(text: '');
    // _gender = TextEditingController(text: widget.user.gender);
    // _phone = TextEditingController(text: _user.phoneNumber ?? '');
    // _birthday = TextEditingController(text: widget.user.birthday);
    super.initState();
  }
  //
  // @override
  // Future<void> pickImage() async {
  //   var context,
  //   pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage!= null) {
  //     showDialog(
  //       context: context,
  //       builder: (context) =>
  //           FutureProgressDialog(uploadImage(), message: Text('Loading...')),
  //     );
  //     selectedImage = await uploadImage();
  //     bool state = (await FirebaseFirestoreController().updateUserImage(path: '', image: selectedImage)) as bool;
  //     if(state){
  //       setState(() {
  //         pickedImage2 = pickedImage;
  //       });
  //     }
  //   }
  // }

  // Future<String> uploadImage() async{
  //   return await FirebaseStorageController()
  //       .uploadImage(file: File(pickedImage!.path), name: '_user.uid');
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'تعديل الصفحة الشخصية',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    //   pickImage();
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: pickedImage!= null ?Image.file(File(pickedImage!.path), fit: BoxFit.cover,) : Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', fit: BoxFit.cover,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'تعديل',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            color: Colors.black.withOpacity(0.50),
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // TextFormField(
                //   decoration: const InputDecoration(
                //     labelText: 'الإسم كاملاً',
                //     contentPadding: const EdgeInsets.only(left: 280.0),
                //   ),
                // ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: TextFormField(
                //     decoration: const InputDecoration(
                //       labelText: 'البريد الإلكتروني',
                //       contentPadding: const EdgeInsets.only(left: 280.0),
                //     ),
                //     keyboardType: TextInputType.emailAddress,
                //   ),
                // ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 30),
                //   child: TextFormField(
                //     keyboardType: TextInputType.visiblePassword,
                //     obscureText: true,
                //     decoration: const InputDecoration(
                //       labelText: 'كلمة المرور',
                //       contentPadding: const EdgeInsets.only(left: 280.0),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 30),
                //   child: TextFormField(
                //     keyboardType: TextInputType.visiblePassword,
                //     obscureText: true,
                //     decoration: const InputDecoration(
                //       labelText: 'رقم الموبايل',
                //       contentPadding: const EdgeInsets.only(left: 280.0),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 35,
                // ),



                Text(
                  'تغريد أبولاشين',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'taghrid@gmail.com',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [


                            ],
                          ),
                          ListEdit(
                            onTap: () {},
                            //   controller: _name,
                            icon: Icons.person_outline,

                            title: 'الإسم',
                            //  enabled: !editPersonal,
                          ),


                          Divider(
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListEdit(
                            onTap: () {},
                            //   controller: _name,
                            icon: Icons.phone,

                            title: 'رقم الموبايل',
                            //  enabled: !editPersonal,
                          ),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListEdit(
                            onTap: () {},
                            //   controller: _name,
                            icon: Icons.email,

                            title: 'البريد الإلكتروني',
                            //  enabled: !editPersonal,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:50),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          showToast();
                        },
                        color: Color(0xff012468),
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "حفظ",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.white),
                        ),
                      ),
                      OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          showToast1();
                        },
                        child: Text("إلغاء",
                            style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2.2,
                                color: Colors.black)),
                      ),

                    ],
                  ),
                ),
              ]),
        ),
      ),


    );
  }
}
void showToast()=>Fluttertoast.showToast(msg: 'تم التعديل بنجاح',
    fontSize: 18,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black45);

void showToast1()=>Fluttertoast.showToast(msg: 'تم الإلغاء',
    fontSize: 18,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black45);

