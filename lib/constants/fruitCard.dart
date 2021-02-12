import 'package:flutter/material.dart';

class FruitCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const FruitCard({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  _FruitCardState createState() => _FruitCardState();
}

class _FruitCardState extends State<FruitCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/fruit');
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Text(widget.title),
          decoration: BoxDecoration(
              color: Colors.blue[200].withOpacity(0.7),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
