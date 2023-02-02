import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Owner_page/models/productuser.dart';
import 'productui.dart';


class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product,}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: product.image, product: product,),
      ],
    );
  }
}

