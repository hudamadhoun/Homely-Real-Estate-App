import 'package:flutter/material.dart';

import 'adminprofile.dart';
import 'orders_tab/message_tab.dart';
import 'orders_tab/order_tab.dart';
import 'orders_tab/product_tab.dart';

class MainAdminScreen extends StatefulWidget {
  const MainAdminScreen({Key? key}) : super(key: key);

  @override
  _MainAdminScreenState createState() => _MainAdminScreenState();
}

class _MainAdminScreenState extends State<MainAdminScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('المشرف'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff012468),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){  Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AdminProfileScreen()));}, icon: const Icon(Icons.person))
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(
              text: 'الرسائل',
            ),
            Tab(
              text: 'العقارات',
            ),
            Tab(
              text: 'الطلبات',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          MessageTab(),
          ProductsScreen(),
          CompletedOrdersScreen(),
        ],
      ),
    );
  }
}
