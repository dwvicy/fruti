import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.red[200]),
            child: DrawerHeader(
                child: Center(
              child: Text(
                'fruti',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Poppins', color: Colors.black54),
              ),
            )),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(LineIcons.cart_arrow_down),
              onPressed: () {},
            ),
            title: Text(
              'Your Orders',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.info_outline_rounded),
              onPressed: () {},
            ),
            title: Text(
              'App Info',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.feedback),
              onPressed: () {},
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(
                LineIcons.power_off,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
