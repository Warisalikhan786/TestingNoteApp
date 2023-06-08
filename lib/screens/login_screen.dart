// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screens/SignUp_screen.dart';
import 'package:note_app/screens/forget_screen.dart';
import 'package:note_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "L O G I N",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "Welcome To My App",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      Get.to(
                        () => ForgetPasswordScreen(),
                        transition: Transition.fadeIn,
                      );
                    },
                    child: Text("Forget Password!")),
              ),
              SizedBox(
                height: 80.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
                child: Text("LOGIN"),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    InkWell(
                      onTap: () {
                        Get.to(() => SignUPScreen(),
                            transition: Transition.fadeIn);
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
