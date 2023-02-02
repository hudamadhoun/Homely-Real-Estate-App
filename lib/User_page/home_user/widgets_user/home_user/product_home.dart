import 'package:flutter/material.dart';

import '../../../../Owner_page/models/productuser.dart';


class ProductHome extends StatelessWidget {
  const ProductHome({Key? key, required this.product, required this.onPressed})
      : super(key: key);
  final Product product;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 200,
                height: 180,
                child: Image.asset(product.image, fit: BoxFit.fill,),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(product.title,style: TextStyle(fontSize: 15),),
                  // const SizedBox(
                  //   width: 30,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 8),
                  Text(product.address,style: TextStyle(fontSize: 10),),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.price}\$/شهر',
                    style:
                    TextStyle(color: Colors.blueAccent.shade400),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 23,
                    decoration: BoxDecoration(
                        color: Color(0xff012468),
                        borderRadius: BorderRadius.circular(5)),
                    child: MaterialButton(
                      onPressed: onPressed,
                      minWidth: 40,
                      child: const Text(
                        'إيجار',
                        style: TextStyle(
                            color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
