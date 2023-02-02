import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../models/productuser.dart';
import '../widgets/details/detailsf_body.dart';

class DetailsfScreen extends StatelessWidget {
  const DetailsfScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsfBody(product: product,),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
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
