import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../models/productapartm.dart';
import '../../screens_apart/detailsapart_screen.dart';

class ProductCard extends StatelessWidget {

  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.productsapart,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Productapart productsapart;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160.0,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsapartScreen(productapart: productsapart,),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 165.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 7.0,
                left: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 150.0,
                  width: 200.0,

                  child: Image.asset(
                    productsapart.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          productsapart.title,
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyText1,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          productsapart.address,
                          style: Theme
                              .of(context)
                              .textTheme
                              .caption,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 5,
                          ),
                          decoration: BoxDecoration(
                              color: kTextColor,
                              borderRadius: BorderRadius.circular(22)),
                          child: Text('السعر: \$${productsapart.price}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
