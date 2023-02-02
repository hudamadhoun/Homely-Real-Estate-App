import 'package:flutter/material.dart';


class CompletedOrdersScreen extends StatefulWidget {
  const CompletedOrdersScreen({Key? key}) : super(key: key);

  @override
  _CompletedOrdersScreenState createState() => _CompletedOrdersScreenState();
}

class _CompletedOrdersScreenState extends State<CompletedOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: //StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestoreController().readOrder(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
      //       List<DocumentSnapshot> documents = snapshot.data!.docs;
      //       return ListView.builder(
      //         itemCount: documents.length,
      //         itemBuilder: (context, index) {
      ListTile(

        title: Text('إسم المستخدم'),
        subtitle: const Text('العنوان'),
      ),
    );
  }}
// } else if (snapshot.connectionState == ConnectionState.waiting) {
//   return const Loading();
// } else {
//   return const NoData();
// }
