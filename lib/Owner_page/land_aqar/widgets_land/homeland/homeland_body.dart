import 'package:aqarat/Owner_page/land_aqar/screens_land/detailsland_screen.dart';
import 'package:aqarat/Owner_page/land_aqar/widgets_land/homeland/productland_car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home_user/widgets_user/home_user/homeuser_body.dart';
import '../../../models/productland.dart';


class LandAqar extends StatelessWidget {
  const LandAqar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "أراضي",
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
                      itemCount: productsland.length,
                      itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        productland: productsland[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailslandScreen(productland: productsland[index],),
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
