import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruti/AppTheme.dart';
import 'package:fruti/cart.dart';
import 'package:fruti/favorites.dart';
import 'package:fruti/home_page.dart';
import 'package:fruti/search.dart';
import 'package:line_icons/line_icons.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _pageController = PageController();
  final List<Widget> pages = [
    HomePage(),
    Search(),
    Favorites(),
    Cart(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu_rounded,
          size: 30,
          color: AppTheme.gray,
        ),
        title: Text(
          'Fruti',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              LineIcons.bell,
              color: AppTheme.gray,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: pages,
          onPageChanged: (int index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
          }),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppTheme.ellow,
        color: AppTheme.lightYellow,
        items: <Widget>[
          Icon(
            LineIcons.home,
            size: 30,
            color: AppTheme.gray,
          ),
          Icon(
            LineIcons.search,
            size: 30,
            color: AppTheme.gray,
          ),
          Icon(
            LineIcons.heart_o,
            size: 30,
            color: AppTheme.gray,
          ),
          Icon(
            LineIcons.shopping_cart,
            size: 30,
            color: AppTheme.gray,
          ),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
          //Handle button tap
        },
      ),
    );
  }
}
