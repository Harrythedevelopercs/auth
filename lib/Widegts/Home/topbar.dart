import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(top:4,left: 15,right: 15),
          width: MediaQuery.of(context).size.width * 0.7,
          height: 55,
          decoration: const BoxDecoration(
            color: Color(0xffD1D1D2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search,size: 35),
              border: InputBorder.none,
              hintText: "Search Outfit",
              iconColor: Color(0xffF2A213)
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const Image(image: AssetImage('assets/images/Heart.png')),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const Image(image: AssetImage('assets/images/Notification.png')),
        ),
      ],
    );
  }
}
