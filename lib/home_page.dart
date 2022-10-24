import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  String urlImage="https://images.unsplash.com/photo-1661961110671-77b71b929d52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "damn",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30
                ),
              ),
              Text(
                "Holly boy",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  Text(
                    "50 ratings",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green
                        ),
                  ),
                ],
              ),
              Image.network(urlImage),
              Image.asset("assets/images/xe.jpg"),
              Image.network(urlImage),
              Image.asset("assets/images/xe.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
