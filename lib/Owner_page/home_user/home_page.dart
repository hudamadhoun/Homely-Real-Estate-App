import 'package:aqarat/Owner_page/home_user/screens_user/detailsuser_screen.dart';
import 'package:aqarat/Owner_page/home_user/screens_user/detailsuu.dart';
import 'package:aqarat/Owner_page/home_user/widgets_user/home_user/product_home.dart';
import 'package:aqarat/Owner_page/land_aqar/widgets_land/homeland/homeland_body.dart';
import 'package:aqarat/Owner_page/office_aqar/widgets_office/homeoffice/homeoffice_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aqarat/Owner_page/home_user/widgets_user/home_user/product_caruser.dart';
import '../../constants.dart';
import '../../pages/profile.dart';
import '../apartm_aqar/widgets_apart/homeapart/homeapart_body.dart';
import '../home_aqar/widgets/home/home_body.dart';
import '../models/productuser.dart';
import '../models/productuu.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: homeAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      ),
                      child: ProductHome(
                        product: products[index],
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20,top: 5),
                      child: Text("???????????? ????????????", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 950,),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: productt.length,
                      itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        productt: productt[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                productt: productt[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.0),

    ),
    backgroundColor: Color(0xFFF3F1F1),
    actions: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: PopupMenuButton<int>(
          onSelected: (item) => onSelected(context, item),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Row(
                children: [
                  Icon(Icons.home, color: Colors.black54),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text("??????????"),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(Icons.apartment, color: Colors.black54),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text("??????"),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(Icons.laptop_mac_rounded, color: Colors.black54),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text("??????????"),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: Row(
                children: [
                  Icon(Icons.landscape_rounded, color: Colors.black54),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text("??????????"),
                  ),
                ],
              ),
            ),
          ],
          child: Icon(
            Icons.segment,
            color: Colors.black,
          ),
        ),
      ),
    ],
    elevation: 0,
    centerTitle: false,
  );
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeAqar(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ApartAqar()),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => OfficeAqar()),
      );
      break;
    case 3:
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LandAqar()),
            (route) => false,
      );
  }
}
