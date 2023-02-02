import 'package:aqarat/Owner_page/favorite/widgets/details/productf_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/productuser.dart';

class DetailsfBody extends StatelessWidget {
  const DetailsfBody({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: product.image, product: product,img: [],),
      ],
    );
  }
}

