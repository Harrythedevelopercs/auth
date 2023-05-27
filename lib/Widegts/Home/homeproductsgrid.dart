import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Product",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
              TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(fontSize: 14,color: Color(0xffF2A213)),))
            ],
          ),

        ],
      ),
    );
  }
}
