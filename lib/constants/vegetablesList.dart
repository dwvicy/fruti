import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruti/constants/fruitCard.dart';
import 'package:fruti/constants/vegCard.dart';

class VegetablesList extends StatefulWidget {
  @override
  _VegetablesListState createState() => _VegetablesListState();
}

class _VegetablesListState extends State<VegetablesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return VegCard(title: 'this.veg');
            }));
  }
}
