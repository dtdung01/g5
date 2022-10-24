import 'package:flutter/material.dart';
//import 'package:g5/provider/widgets/product_provider.dart';
import 'package:provider/provider.dart';

import '../model/product_provider.dart';
class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
        ...provider.list.map((e){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.jpg",
                width: 20,
                height: 20,
                ),
                Text(
                  e.category??"",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4C53A5),
                  ),
                )
              ],
            ),
          );
          }).toList()
        ],
      ),
    );
  }
}
