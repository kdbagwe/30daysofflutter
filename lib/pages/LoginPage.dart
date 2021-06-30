import 'package:flutter/material.dart';
import 'package:flutter_catalog_1/utils/MyRoute.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {  
  String name = "";
  bool animate = false;

  final _formkey = GlobalKey<FormState>();
  
  moveToHome (BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      animate = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homePage);
      setState(() {
        animate = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              // Image.asset(
              //   "assets/images/undraw_Access_account_re_8spm.png", 
              //   fit: BoxFit.contain
              // ),
              SizedBox(height: 20.0),
              Text("Welcome $name",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 32.0
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Username cannot be null";
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        else if (val.length <= 6) {
                          return "Password length should be greater than 6";
                        }

                        return null;
                      },
                    )
                  ]
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: animate ? 30 : 120,
                  height: animate ? 30 : 40,
                  child: animate
                  ? Icon(
                    Icons.done,
                    color: Colors.white,
                  ) 
                  : Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: animate ? BorderRadius.circular(50) : BorderRadius.circular(5)
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoute.homePage);
              //   }, 
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(
              //     minimumSize: Size(120, 40)
              //   ),
              // )
            ]
          ),
        )
      )
    );
  }
}