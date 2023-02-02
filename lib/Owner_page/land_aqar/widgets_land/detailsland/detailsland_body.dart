import 'package:aqarat/Owner_page/land_aqar/widgets_land/detailsland/productland_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/producthome.dart';
import '../../../models/productland.dart';




class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.productland}) : super(key: key);
  final Productland productland;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: productland.image, productland: productland,img: [],),
      ],
    );
  }
}

