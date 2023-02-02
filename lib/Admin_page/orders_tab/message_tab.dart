import 'package:flutter/material.dart';

import '../category_controller_screen.dart';


class MessageTab extends StatefulWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: //StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestoreController().readCategory(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
      //       List<DocumentSnapshot> documents = snapshot.data!.docs;
      ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {

            },

            title: Text(('name')),
            subtitle: const Text('0 items'),
          );
        },
      ),
    );
    // } else if (snapshot.connectionState == ConnectionState.waiting) {
    //   return const Loading();
    // } else {
    //   return const NoData();
    // }
  }}

//   Category getCategory(DocumentSnapshot snapshot){
//     Category category = Category();
//     category.image = snapshot.get('image');
//     category.name = snapshot.get('name');
//     category.path = snapshot.id;
//     return category;
//   }
// }
