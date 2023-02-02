import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/home/favorite_body.dart';


class HomefScreen extends StatelessWidget {
  const HomefScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: favorite(),
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
        'المفضلة',
        style: TextStyle(color: Colors.black, fontSize: 25),


      ),
      centerTitle: false,
    );
  }
}
