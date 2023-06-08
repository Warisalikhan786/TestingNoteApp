// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screens/login_screen.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({super.key});

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("SIGNUP",
            style: TextStyle(
              color: Colors.black,
            )),
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
                    hintText: "UserName",
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
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone",
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
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
              SizedBox(
                height: 80.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("SIGNUP"),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        "SIGN IN",
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
