import 'dart:developer';
import 'dart:io';
import 'dart:math';
import 'package:aqarat/ButtonWidget.dart';
import 'package:aqarat/Owner_page/login_owner.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import '../Owner_page/models/productapartm.dart';
import '../Owner_page/models/producthome.dart';
import '../Owner_page/models/productland.dart';
import '../Owner_page/models/productoffice.dart';
import '../Owner_page/models/productuser.dart';
import 'login_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Addproperty extends StatefulWidget {
  static const String screenRoute = 'add_screen';

  @override
  State<Addproperty> createState() => _AddpropertyState();
}

class _AddpropertyState extends State<Addproperty> {
  late File file;

//  String? title, decription, type,price;

  double? lang, lat;
  String address = "";

  String type = "شقق";

  PickedFile? imageFile;

  List type2 = productsapart;
  TextEditingController titleInputController = TextEditingController();
  TextEditingController addressInputController = TextEditingController();
  TextEditingController priceInputController = TextEditingController();
  TextEditingController decriptionInputController = TextEditingController();
  TextEditingController typeInputController = TextEditingController();
  TextEditingController langInputController = TextEditingController();
  TextEditingController latInputController = TextEditingController();
  TextEditingController imagenputController = TextEditingController();
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  // Future imagepickedC() async {
  //   try {
  //     XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
  //     File updateFile = File(file?.path ?? "");
  //     String filePath = updateFile.path;
  //     String fileName = filePath.split('/').last;
  //     String path = 'images/Camera/$fileName';
  //     Reference reference = firebaseStorage.ref(path);
  //     await reference.putFile(updateFile);
  //
  //     //3 get the file url
  //     String imageUrl = await reference.getDownloadURL();
  //
  //     return imageUrl;
  //   } on Exception catch (e) {}
  // }
  //
  // Future imagepickedG() async {
  //   try {
  //     XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     File updateFile = File(file?.path ?? "");
  //     String filePath = updateFile.path;
  //     String fileName = filePath.split('/').last;
  //     String path = 'images/Gallary/$fileName';
  //     Reference reference = firebaseStorage.ref(path);
  //     await reference.putFile(updateFile);
  //
  //     //3 get the file url
  //     String imageUrl = await reference.getDownloadURL();
  //
  //     // log(imageUrl);
  //     return imageUrl;
  //   } on Exception catch (e) {}
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          centerTitle: false,
          title: Text(
            "إضافة عقار",
            style: TextStyle(color: Color(0xff012468), fontSize: 20.0),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.logout,
                size: 30,
              ),
              color: Color(0xff012468),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ownerlogin()),
                );
              },
            ),
          ]),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(left: 150, top: 65),
          child: Row(children: []),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  // RaisedButton(
                  //     color: Color(0xff9e9d9d),
                  //
                  //     child: const Text("  إختر صورة من المعرض",
                  //         style: TextStyle(
                  //             fontSize: 15.0,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold)),
                  //     onPressed: () async {
                  //
                  //       await imagepickedG();
                  //     }),
                  // RaisedButton(
                  //     color: Color(0xff9e9d9d),
                  //     child: const Text("إلتقط صورة عبر الكاميرا",
                  //         style: TextStyle(
                  //             fontSize: 15,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold)),
                  //     onPressed: () async {
                  //       await imagepickedC();
                  //     }),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 0),
                      height: 150,
                      width: 150,
                      child: DottedBorder(
                        customPath: (size) {
                          return Path()
                            ..moveTo(10, 0)
                            ..lineTo(size.width - 15, 0)
                            ..arcToPoint(Offset(size.width, 15),
                                radius: const Radius.circular(15))
                            ..lineTo(size.width, size.height - 15)
                            ..arcToPoint(Offset(size.width - 15, size.height),
                                radius: const Radius.circular(15))
                            ..lineTo(10, size.height)
                            ..arcToPoint(Offset(0, size.height - 15),
                                radius: const Radius.circular(15))
                            ..lineTo(0, 15)
                            ..arcToPoint(
                              const Offset(15, 0),
                              radius: const Radius.circular(15),
                            );
                        },
                        color: Colors.grey,
                        strokeWidth: 1,
                        dashPattern: const [10, 5],
                        child: (imageFile == null)
                            ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _showChoiceDialog(context);
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MaterialButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  _showChoiceDialog(context);
                                },
                                child: const Text(
                                  "حمل صورة",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                            : Center(
                          child: Image.file(
                            File(imageFile!.path),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'العنوان',
                    // contentPadding: const EdgeInsets.only(left: 300.0),
                  ),
                  controller: titleInputController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: decriptionInputController,
                  decoration: const InputDecoration(
                    labelText: 'الوصف',
                    // contentPadding: const EdgeInsets.only(left: 300.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: TextFormField(
                  controller: priceInputController,
                  decoration: const InputDecoration(
                    labelText: 'السعر',
                    // contentPadding: const EdgeInsets.only(left: 300.0),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'الفئة',
                      style: TextStyle(fontSize: 20, color: Colors.black45),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 40.0),
                    child: DropdownButton(
                      value: type,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.grey,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                      onChanged: (dynamic newValue) {
                        setState(() {
                          type = newValue;
                          if (type == "شقق") {
                            type2 = productsapart;
                          } else if (type == "منازل") {
                            type2 = productshome;
                          } else if (type == "أراضي") {
                            type2 = productsland;
                          } else if (type == "مكاتب") {
                            type2 = productsoffice;
                          } else {
                            type2 = products;
                          }
                        });
                      },
                      items: <String>[
                        "شقق",
                        "منازل",
                        "أراضي",
                        "مكاتب",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 40),
              //   child: TextFormField(
              //     decoration: const InputDecoration(
              //       labelText: 'الفئة',
              //       contentPadding: const EdgeInsets.only(left: 300.0),
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Container(
                    child: const Text(
                      "الموقع:",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    width: 100,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "$address",
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff9e9d9d),
                      ),
                      onPressed: () async {
                        // Geolocator.getCurrentPosition().then(
                        //       (currentloc) {
                        //     currentLocation = currentloc;
                        //     lat = currentloc.latitude;
                        //     lang = currentloc.longitude;
                        //
                        //   },
                        // );
                        // print(lat);
                        // print(lang);
                        getLatLong();
                      },
                      child: Text(
                        "احصل على الموقع",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xff012468)),
                    onPressed: () {
                      if (type == "شقق") {
                        type2.add(
                          Productapart(
                            id: 6,
                            price: priceInputController.text,
                            title: titleInputController.text,
                            address: '$address',
                            image: '$imageFile',
                            images: ['$imageFile'],
                            description: decriptionInputController.text,
                          ),
                        );
                        print(11111);
                      } else if (type == "منازل") {
                        type2.add(
                          Producthome(
                            id: 6,
                            price: priceInputController.text,
                            title: titleInputController.text,
                            address: '$address',
                            image: '$imageFile',
                            images: ['$imageFile'],
                            description: decriptionInputController.text,
                          ),
                        );
                        print(112222111);
                      } else if (type == "أراضي") {
                        type2.add(
                          Productland(
                            id: 6,
                            price: priceInputController.text,
                            title: titleInputController.text,
                            address: '$address',
                            image: '$imageFile',
                            images: ['$imageFile'],
                            description: decriptionInputController.text,
                          ),
                        );
                        print(1133333111);
                      } else if (type == "مكاتب") {
                        type2.add(
                          Productoffice(
                            id: 6,
                            price: priceInputController.text,
                            title: titleInputController.text,
                            address: '$address',
                            image: '$imageFile',
                            images: ['$imageFile'],
                            description: decriptionInputController.text,
                          ),
                        );
                        print(11444111);
                      } else {
                        type2.add(
                          Product(
                            id: 6,
                            price: priceInputController.text,
                            title: titleInputController.text,
                            address: '$address',
                            image: "assets/images/hh.jpg",
                            images: [],
                            description: decriptionInputController.text,
                          ),
                        );
                        print(1116666611);
                      }
                      print('error');
                    },
                    child: GestureDetector(
                      onTap: (){
                        showToast();
                      },
                      child: Text(
                        'إضافة عقار',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  height: 40.0,
                  width: 140,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        if (type == "شقق") {
                          type2.add(
                            Productapart(
                              id: 6,
                              price: priceInputController.text,
                              title: titleInputController.text,
                              address: '$address',
                              image: '$imageFile',
                              images: [
                                '$imageFile',
                              ],
                              description: decriptionInputController.text,
                            ),
                          );
                          print(11111);
                        } else if (type == "منازل") {
                          type2.add(
                            Producthome(
                              id: 6,
                              price: priceInputController.text,
                              title: titleInputController.text,
                              address: '$address',
                              image: '$imageFile',
                              images: ['$imageFile'],
                              description: decriptionInputController.text,
                            ),
                          );
                          print(112222111);
                        } else if (type == "أراضي") {
                          type2.add(
                            Productland(
                              id: 6,
                              price: priceInputController.text,
                              title: titleInputController.text,
                              address: '$address',
                              image: '$imageFile',
                              images: ['$imageFile'],
                              description: decriptionInputController.text,
                            ),
                          );
                          print(1133333111);
                        } else if (type == "مكاتب") {
                          type2.add(
                            Productoffice(
                              id: 6,
                              price: priceInputController.text,
                              title: titleInputController.text,
                              address: '$address',
                              image: '$imageFile',
                              images: ['$imageFile'],
                              description: decriptionInputController.text,
                            ),
                          );
                          print(11444111);
                        } else {
                          type2.add(
                            Product(
                              id: 6,
                              price: priceInputController.text,
                              title: titleInputController.text,
                              address: '$address',
                              image: '$imageFile',
                              images: ['$imageFile'],
                              description: decriptionInputController.text,
                            ),
                          );
                          print(1116666611);
                        }
                        print('error');
                      },
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  Future<String> uploadPic(File _image1) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    String url = "";
    print("****************$url");
    final fileName = basename(_image1.path);
    final destination = 'files/$fileName';
    Reference reference = storage.ref(destination);
    await reference.putFile(_image1);
    url = await reference.getDownloadURL();
    print("****************$url");
    return url;
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: const Text("Gallery"),
                    leading: const Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: const Text("Camera"),
                    leading: const Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getLatLong() {
    Future<Position> data = _determinePosition();
    data.then((value) {
      print("value $value");
      setState(() {
        lat = value.latitude;
        lang = value.longitude;
      });

      getAddress(value.latitude, value.longitude);
    }).catchError((error) {
      print("Error $error");
    });
  }

//For convert lat long to address
  getAddress(lat, lang) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, lang);
    setState(() {
      address = placemarks[0].street! + " " + placemarks[0].country!;
    });

    for (int i = 0; i < placemarks.length; i++) {
      print("INDEX $i ${placemarks[i]}");
    }
  }
}

void showToast()=>Fluttertoast.showToast(msg: 'تمت إضافة العقار بنجاح',
    fontSize: 18,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black45);