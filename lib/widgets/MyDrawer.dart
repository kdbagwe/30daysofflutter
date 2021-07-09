import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  final imgUrl = "https://avatars.githubusercontent.com/u/9919?s=460&v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrange
                ),
                accountName: Text(
                  'Kaustubh Bagwe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
                accountEmail: Text(
                  'kdbagwe@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl)
                ),
              )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white
              ),
              title: Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}