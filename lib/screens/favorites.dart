import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruti/constants/AppTheme.dart';
import 'package:fruti/constants/fruits.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FruitList(),
    );
  }
}
