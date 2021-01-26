import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/fruit');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Text('this.fruit'),
                    decoration: BoxDecoration(
                        color: Colors.blue[200].withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              );
            }));
  }
}
