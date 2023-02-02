import 'package:aqarat/Owner_page/home_aqar/widgets/details/product_image.dart';
import 'package:aqarat/Owner_page/models/productuser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/producthome.dart';




class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.producthome}) : super(key: key);
  final Producthome producthome;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: producthome.image, producthome: producthome,img: [],),
      ],
    );
  }
}

