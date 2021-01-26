import 'package:flutter/material.dart';
import 'package:fruti/constants/AppTheme.dart';
import 'package:line_icons/line_icons.dart';

class FavoritesList extends StatefulWidget {
  @override
  _FavoritesListState createState() => _FavoritesListState();
}

class _FavoritesListState extends State<FavoritesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppTheme.lightRed),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              isThreeLine: true,
              leading: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(LineIcons.heart),
              ),
              title: Text(
                'Fresh Apples',
                style: Style.productName,
              ),
              subtitle: Text(
                'An apple a day keeps the doctor away!',
                style: Style.productDesc,
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  LineIcons.cart_plus,
                  color: Colors.black87,
                  size: 30,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
