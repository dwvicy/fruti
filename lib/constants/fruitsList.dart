import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruti/constants/fruitCard.dart';

List<String> names = [
  'An apple a day, keeps doctor away',
  'Bunny loves carrots',
  'Una banana',
  'Grapes are sweet',
  'Yum Yum Mango'
];

class FruitsList extends StatefulWidget {
  @override
  _FruitsListState createState() => _FruitsListState();
}

class _FruitsListState extends State<FruitsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return FruitCard(
                title: names[index],
              );
            }));
  }
}
