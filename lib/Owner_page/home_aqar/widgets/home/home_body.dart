import 'package:aqarat/Owner_page/home_aqar/screens/details_screen.dart';
import 'package:aqarat/Owner_page/home_aqar/widgets/home/product_car.dart';
import 'package:aqarat/Owner_page/home_user/widgets_user/home_user/homeuser_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../models/producthome.dart';


class HomeAqar extends StatelessWidget {
  static const  String screenRoute = 'homeaqar_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "منازل",
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
                  itemCount: productshome.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    producthome: productshome[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailshomeScreen(producthome: productshome[index],),
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
