import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(//vùng an toàn
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Text(
              //     "Đăng nhập hệ thống",
              //   style: TextStyle(
              //     fontSize: 25,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("assets/images/logo.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty)
                      return "Tên đăng nhập không được rỗng";
                    else
                      return null;
                  },
                  controller: userNameController ,
                  decoration: InputDecoration(
                    hintText: "Vui lòng nhập tên đăng nhập",
                    label: Text(
                      "Tên đăng nhập",
                      style: TextStyle(
                        color: Colors.lightBlueAccent
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
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
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
              ),
              SizedBox(
                width: 450,
                height: 40,
                child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                      var userName = userNameController.text;
                      var snackBar = SnackBar(
                        content: Text(
                          "Xin Chào: ${userName}",
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text("Đăng nhập"
                    ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          )
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
