import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../pages/detailsprofile.dart';
import '../../../models/productland.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.size,
    required this.image,
    required this.img,
    required this.productland,
  }) : super(key: key);

  final Size size;
  final String image;
  final List<String> img;
  final Productland productland;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int activeIndex = 0;
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider.builder(
            options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                reverse: true,
                height: 300,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index)),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final images = widget.productland.images[index];
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      images,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                // child: Image.asset(
                //   images,
                //   fit: BoxFit.fill,
                // ),
              );
            },
            itemCount: widget.productland.images.length,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        AnimatedSmoothIndicator(

            effect:JumpingDotEffect(
              // spacing: 6.0,
              // radius: 2.0,
              // dotWidth: 10.0,
              // dotHeight: 10.0,
                paintStyle: PaintingStyle.stroke,
                dotColor: Color(0xffD2D2D2),
                activeDotColor: Color(0xff012468)
            ),
            activeIndex: activeIndex,
            count: widget.productland.images.length),


        Padding(
          padding: const EdgeInsets.only(top:20,right: 15),
          child: Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "السعر: ",
                  style: TextStyle(
                    color: Color(0xff012468),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height:10),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  '\$ ${widget.productland.price}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      // alignment: Alignment.centerLeft,
                      // child: IconButton(
                      //   icon: (_isFavorited
                      //       ? const Icon(Icons.favorite_border)
                      //       : const Icon(Icons.favorite)),
                      //   color: Colors.red[500],
                      //   onPressed: _toggleFavorite,
                      // ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Container(
                        child: new Material(
                          color: Colors.white,
                          shape: new CircleBorder(),
                          child: IconButton(
                            icon: (_isFavorited
                                ? const Icon(Icons.favorite_border)
                                : const Icon(Icons.favorite)),
                            color: Colors.red[500],
                            onPressed: _toggleFavorite,
                          ),
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:30,right: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "العنوان: ",
                  style: TextStyle(
                    color: Color(0xff012468),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height:10),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.productland.address,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(top:40,right: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "الوصف: ",
                  style: TextStyle(
                    color: Color(0xff012468),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height:10),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.productland.description,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),


        Padding(
          padding: EdgeInsets.only(top: 30),

          child: Container(
            height: 47,
            width: 174,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xff012468),
              borderRadius: BorderRadius.all(
                Radius.circular(9),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Text(
                  "تواصل",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    //fontFamily: "Cairo",
                    //fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detailsprofile()),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void _toggleFavorite() {
  // setState(() {
  //   if (_isFavorited) {
  //     _favoriteCount -= 1;
  //     _isFavorited = false;
  //   } else {
  //     _favoriteCount += 1;
  //     _isFavorited = true;
  //   }
  // });
}
