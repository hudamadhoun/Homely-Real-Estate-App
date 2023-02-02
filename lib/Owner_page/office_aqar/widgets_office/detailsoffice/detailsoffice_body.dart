import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/productoffice.dart';
import 'package:aqarat/Owner_page/office_aqar/widgets_office/detailsoffice/productoffice_image.dart';





class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.productsoffice}) : super(key: key);
  final Productoffice productsoffice;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductImage(size: size, image: productsoffice.image, productsoffice: productsoffice,img: [],),
      ],
    );
  }
}

