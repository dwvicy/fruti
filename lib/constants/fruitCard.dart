import 'package:flutter/material.dart';
import 'package:fruti/constants/AppTheme.dart';
import 'package:like_button/like_button.dart';
import 'package:line_icons/line_icons.dart';

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
          Navigator.pushNamed(context, '/');
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.185,
              left: MediaQuery.of(context).size.width * 0.025,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.26,
                height: MediaQuery.of(context).size.height * 0.03,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Buy',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.18,
              left: MediaQuery.of(context).size.width * 0.3,
              child: LikeButton(
                size: 30,
                circleColor:
                    CircleColor(start: AppTheme.lightYellow, end: Colors.pink),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Colors.pink,
                  dotSecondaryColor: AppTheme.lightGreen,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    LineIcons.heart,
                    color: isLiked ? Colors.pink : Colors.grey,
                    size: 30,
                  );
                },
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "love",
                      style: TextStyle(color: Colors.black),
                    );
                  } else
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  return result;
                },
              ),
            )
          ]),
          decoration: BoxDecoration(
              color: Colors.orangeAccent[200].withOpacity(0.6),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
