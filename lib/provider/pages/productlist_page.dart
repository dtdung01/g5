import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g5/provider/model/product_model.dart';
//import 'package:g5/provider/product_provider.dart';
import 'package:provider/provider.dart';
//import 'package:g5/provider/product_appbar.dart';

import '../model/product_provider.dart';
import '../widgets/category_widget.dart';
//import '../item_widget.dart';
import '../widgets/item_widget.dart';
import '../widgets/product_appbar.dart';
//import '../widgets/product_provider.dart';
class ProductListPage extends StatelessWidget {
   ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return Scaffold(
      body: ListView(
        // scrollDirection: Axis.vertical,
        children: [
          ProductAppbar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField  (
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Product  "
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt,
                        size: 25,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color:Color(0xFF4C53A5),
                    ),
                  ),
                ),
                CategoryWidget(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Items",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5)
                    ),
                  ),
                ),
                ItemWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Color(0xFF4C53A5),
        items:[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          )
        ]
      ),
    );
  }
}
// ...provider.list.map((e){
//   return Container(
//     // padding: EdgeInsets.all(20),
//     // margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//     decoration: BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage(e.image ?? ""),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(20)),
//   );
// }).toList()