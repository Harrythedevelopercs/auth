import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';


class MyHomePageCaro extends StatefulWidget {
  @override
  _MyHomePageCaro createState() => _MyHomePageCaro();
}

class _MyHomePageCaro extends State<MyHomePageCaro> {
  int pageIndex=0;

  List<Widget> _demo=[
    Container(height: 200,color: Colors.amber),
    Container(height: 200,color: Colors.black),
    Container(height: 200,color: Colors.blue),
    Container(height: 200,color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: PageView(
            children: _demo,
            onPageChanged: (index){
              setState(() {
                pageIndex=index;
              });
            },
          ),
        ),
        SizedBox(height: 10,),
        CarouselIndicator(
          color: Colors.red,
          activeColor: Colors.blue,
          count: _demo.length,
          index: pageIndex,
        ),
      ],
    );
  }
}