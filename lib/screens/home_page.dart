import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constants/AppTheme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<Widget> names = [
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppTheme.lightGreen)),
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppTheme.lightRed)),
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.lightYellow)),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: names,
                )))
          ],
        ),
      ),
    );
  }
}
