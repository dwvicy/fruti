import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Text('this.fruit'),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent[200].withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            }));
  }
}
