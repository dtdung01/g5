import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nhập FirstName",
                      label: Text(
                          "FirstName",
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.lightBlueAccent,
                          ),
                        )
                    ),
                  ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nhập LastName",
                  label: Text(
                    "LastName",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    )
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Vui lòng nhập UserName",
                    label: Text(
                      "UserName",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    )
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Vui lòng nhập Email",
                    label: Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    )
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Vui lòng nhập mật khẩu",
                    label: Text(
                      "Mật khẩu",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    prefixIcon: Icon(Icons.key),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

