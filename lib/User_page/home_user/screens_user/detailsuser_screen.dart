import 'package:flutter/material.dart';
import '../../../Owner_page/models/productuser.dart';
import '../../../constants.dart';
import '../widgets_user/details_user/detailsuser_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product, }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      // leading: IconButton(
      //   padding: EdgeInsets.only(right: kDefaultPadding),
      //   icon: Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      //   onPressed: (){
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }
}
