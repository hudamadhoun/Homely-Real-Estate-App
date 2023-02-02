import 'package:aqarat/Owner_page/apartm_aqar/widgets_apart/detailsapart/detailsapart_body.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/productapartm.dart';

class DetailsapartScreen extends StatelessWidget {
  const DetailsapartScreen({Key? key, required this.productapart}) : super(key: key);
  final Productapart productapart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(productsapart: productapart,),
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
