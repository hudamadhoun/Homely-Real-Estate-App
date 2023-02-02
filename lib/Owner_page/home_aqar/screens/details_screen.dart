import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/producthome.dart';
import '../widgets/details/details_body.dart';

class DetailshomeScreen extends StatelessWidget {
  const DetailshomeScreen({Key? key, required this.producthome}) : super(key: key);
  final Producthome producthome;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(producthome: producthome,),
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
