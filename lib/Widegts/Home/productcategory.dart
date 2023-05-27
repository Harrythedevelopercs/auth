import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ProductCategory extends StatelessWidget {
  ProductCategory({Key? key}) : super(key: key);

  CollectionReference productsCat = FirebaseFirestore.instance.collection('productCategories');
  productCategoriesLiest() async {
    return productsCat.get();
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              TextButton(onPressed: (){}, child: const Text("View All",style: TextStyle(
                fontSize: 14,
                color: Color(0xffF2A213)
              ),))
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FutureBuilder(
                  future: productCategoriesLiest(),
                  builder: (BuildContext context, AsyncSnapshot snapshot){
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 104,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF2A213),
                              ),
                              margin: const EdgeInsets.only(right: 12),
                              child:  Center(
                                child: Text(snapshot.data.docs[index]['title'],style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                )),
                              ),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
