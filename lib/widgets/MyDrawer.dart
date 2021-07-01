import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  final imgUrl = "https://avatars.githubusercontent.com/u/9919?s=460&v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.yellow,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  'Kaustubh Bagwe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
                accountEmail: Text(
                  'kdbagwe@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
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
                color: Colors.black
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black
              ),
              title: Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}