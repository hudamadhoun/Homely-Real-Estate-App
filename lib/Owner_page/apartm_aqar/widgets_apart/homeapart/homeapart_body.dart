import 'package:aqarat/Owner_page/apartm_aqar/screens_apart/detailsapart_screen.dart';
import 'package:aqarat/Owner_page/apartm_aqar/widgets_apart/homeapart/productapart_car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home_user/widgets_user/home_user/homeuser_body.dart';
import '../../../models/productapartm.dart';


class ApartAqar extends StatelessWidget {
  const ApartAqar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "شقق",
          style: TextStyle(color: Color(0xff012468), fontSize: 20.0),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            color: Color(0xff012468),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeBody()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding / 2 ,
            ),
            Expanded(
                child: Stack(
                  children: [

                    ListView.builder(
                      itemCount: productsapart.length,
                      itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        productsapart: productsapart[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsapartScreen(productapart: productsapart[index],),
                            ),
                          );
                        },
                      ),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
