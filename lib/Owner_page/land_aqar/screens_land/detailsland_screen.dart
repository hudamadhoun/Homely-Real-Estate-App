import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/producthome.dart';
import '../../models/productland.dart';
import '../widgets_land/detailsland/detailsland_body.dart';

class DetailslandScreen extends StatelessWidget {
  const DetailslandScreen({Key? key, required this.productland}) : super(key: key);
  final Productland productland;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(productland: productland,),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
