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
                    aspectRatio: 1,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: names,
                ))),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'choose your category',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink[100]),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Fruits',
                      style: Style.productName,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[200]),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Vegetables',
                      style: Style.productName,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
