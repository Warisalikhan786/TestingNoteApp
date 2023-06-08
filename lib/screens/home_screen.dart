// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController noteController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Welcome"),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 30.0,
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(index.toString()),
                  ),
                  title: Text("Note 1"),
                  subtitle: Text("Pending"),
                  trailing: CircleAvatar(
                    child: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: "Do you want to Save",
                          content: TextFormField(
                            controller: noteController..text = "$index",
                            decoration: InputDecoration(hintText: "Edit"),
                          ),
                          onCancel: () {},
                          onConfirm: () {},
                        );
                      },
                      child: Icon(Icons.edit),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
