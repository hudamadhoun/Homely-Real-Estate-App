import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../product_controller_screen.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  String categoryId = '';
  bool addProduct = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Visibility(
        visible: addProduct,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff012468),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: //StreamBuilder<QuerySnapshot>(
          //     stream: FirebaseFirestoreController().readProduct(),
          //     builder: (context, snapshot) {
          //       if(snapshot.hasData && snapshot.data!.docs.isNotEmpty){
          //         List<DocumentSnapshot> documents = snapshot.data!.docs;
          ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            title: Text('name'),
            subtitle: Text('quantitve'.toString() + ' items'),
            trailing: Text('price'.toString()),
          );
        },
      ),
    );
    //       }else if(snapshot.connectionState == ConnectionState.waiting){
    //         return Loading();
    //       }else {
    //         return NoData();
    //       }
    //     }
    // ),

    // Product getProduct(DocumentSnapshot snapshot){
    //   Product product = Product();
    //   product.image = snapshot.get('image');
    //   product.name = snapshot.get('name');
    //   product.price = snapshot.get('price');
    //   product.color = snapshot.get('color');
    //   product.size = snapshot.get('size');
    //   product.quantity = snapshot.get('quantity');
    //   product.description = snapshot.get('description');
    //   product.path = snapshot.id;
    //   return product;
  }
}
