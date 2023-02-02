import 'package:flutter/material.dart';
import '../../../Owner_page/models/productuu.dart';
import '../../../constants.dart';
import '../widgets_user/details_user/detailsbod.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.productt, }) : super(key: key);
  final Productt productt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailBody(productt: productt),
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
