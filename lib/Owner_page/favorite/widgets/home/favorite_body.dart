import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home_user/widgets_user/home_user/homeuser_body.dart';
import '../../../models/productuser.dart';
import '../../screens/detailsf_screen.dart';
import 'productf_car.dart';

class favorite extends StatelessWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: false,
        title: Text(
          "المفضلة",
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
                      itemCount: products.length,
                      itemBuilder: (context, index) => ProductfCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsfScreen(product: products[index],),
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
