import 'package:aqarat/Owner_page/apartm_aqar/widgets_apart/detailsapart/productapart_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/productapartm.dart';




class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.productsapart}) : super(key: key);
  final Productapart productsapart;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: productsapart.image, productsapart: productsapart, img: [],),
      ],
    );
  }
}

