import 'package:aqarat/Owner_page/models/productoffice.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets_office/detailsoffice/detailsoffice_body.dart';

class DetailsofficeScreen extends StatelessWidget {
  const DetailsofficeScreen({Key? key, required this.productsoffice}) : super(key: key);
  final Productoffice productsoffice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(productsoffice: productsoffice,),
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
