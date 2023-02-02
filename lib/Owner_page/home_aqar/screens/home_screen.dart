import 'package:aqarat/Owner_page/home_aqar/widgets/home/home_body.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeAqar(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFF3F1F1),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_forward_outlined),color: Colors.black,
        )
      ],
      elevation: 0,
      title: Text(
        'منازل',
        style: TextStyle(color: Colors.black, fontSize: 25),


      ),
      centerTitle: false,
    );
  }
}
