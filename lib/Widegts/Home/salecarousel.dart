import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class MyHomePageCaro extends StatefulWidget {
  @override
  _MyHomePageCaro createState() => _MyHomePageCaro();
}

class _MyHomePageCaro extends State<MyHomePageCaro> {
  int pageIndex = 0;

  final List<Widget> _demo = [
    Container(
      height: 162,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sale.jpg'), fit: BoxFit.cover)),
    ),
    Container(
      height: 162,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sale.jpg'), fit: BoxFit.cover)),
    ),
    Container(
      height: 162,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sale.jpg'), fit: BoxFit.cover)),
    ),
    Container(
      height: 162,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sale.jpg'), fit: BoxFit.cover)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 162,
          width: double.infinity,
          child: PageView(
            children: _demo,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselIndicator(
          color: Color(0xffad62f4),
          activeColor: Colors.blue,
          count: _demo.length,
          index: pageIndex,
        ),
      ],
    );
  }
}
