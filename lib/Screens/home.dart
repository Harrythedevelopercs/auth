import 'package:authlogin/Widegts/Home/homeproductsgrid.dart';
import 'package:authlogin/Widegts/Home/salecarousel.dart';
import 'package:authlogin/Widegts/Home/topbar.dart';
import 'package:flutter/material.dart';

import '../Widegts/Home/productcategory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              MyHomePageCaro(),
              const SizedBox(height: 23),
              ProductCategory(),
              const SizedBox(height: 23),
              const ProductsGrid()
            ],
          ),
        ),
      ),
    );
  }
}
