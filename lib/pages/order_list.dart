import 'package:flutter/material.dart';
import 'package:diplom/elements/nav_bar.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const NavBar(
            name: 'Ваня',
            number: '+375(33)352-25-92',
          ),
          appBar: AppBar(
            title: const Text(''),
            backgroundColor: Colors.blueGrey[100],
          ),
          body: const Center(child: Text('Main page')),
        ));
  }
}
