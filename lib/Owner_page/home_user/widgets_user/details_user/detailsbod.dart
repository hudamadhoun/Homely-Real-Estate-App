import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/productuu.dart';
import 'productuser_image.dart';


class DetailBody extends StatelessWidget {
  const DetailBody({Key? key, required this.productt,}) : super(key: key);
  final Productt productt;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage1(size: size, image: productt.image, productt: productt,),
      ],
    );
  }
}

