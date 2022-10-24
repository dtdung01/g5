import 'package:flutter/material.dart';
import 'package:g5/provider/model/product_provider.dart';
import 'package:g5/provider/pages/ItemPage.dart';
//import 'package:g5/provider/product_provider.dart';
//import 'package:g5/provider/widgets/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:g5/provider/pages/productlist_page.dart';

import '../pages/CartPage.dart';


void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProductProvider())
        ],
        child: MaterialApp(
          //home: ProductListPage(),
          routes: {
            "/" : (context) => ProductListPage(),
            "cartPage" : (context) => CartPage(),
            "itemPage" : (context) => ItemPage(),
          },
        ),
      ),
  );
}