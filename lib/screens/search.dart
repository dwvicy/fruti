import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruti/constants/fruitsList.dart';
import 'package:fruti/constants/vegetablesList.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.02),
          child: Text(
            'fresh fruits',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: FruitsList()),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.31,
              left: MediaQuery.of(context).size.width * 0.02),
          child: Text(
            'fresh vegetables',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.35,
          ),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: VegetablesList()),
        ),
      ]),
    );
  }
}
