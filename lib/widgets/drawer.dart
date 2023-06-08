// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ALi"),
            accountEmail: Text("ali@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("A"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.photo_album),
            title: Text("Gallery"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: Text("Info"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
