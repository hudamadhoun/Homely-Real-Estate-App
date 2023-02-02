import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aqarat/Owner_page/office_aqar/widgets_office/homeoffice/productoffice_car.dart';

import '../../../../constants.dart';
import '../../../home_user/widgets_user/home_user/homeuser_body.dart';
import '../../../models/productoffice.dart';
import '../../screens_office/detailsoffice_screen.dart';


class OfficeAqar extends StatelessWidget {
  const OfficeAqar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "مكاتب",
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
                      itemCount: productsoffice.length,
                      itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        productsoffice: productsoffice[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsofficeScreen(productsoffice: productsoffice[index],),
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
