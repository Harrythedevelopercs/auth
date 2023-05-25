import 'package:authlogin/Widegts/Home/salecarousel.dart';
import 'package:authlogin/Widegts/Home/topbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50,left: 15,right: 15),
        child:  Column(
          children: [
            TopBar(),
            SizedBox(height: 20),
            MyHomePageCaro(),
          ],
        ),
      ),
    );
  }
}
