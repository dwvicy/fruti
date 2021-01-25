import 'package:flutter/material.dart';
import 'package:fruti/constants/AppTheme.dart';
import 'package:line_icons/line_icons.dart';

class NotifList extends StatefulWidget {
  @override
  _NotifListState createState() => _NotifListState();
}

class _NotifListState extends State<NotifList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
  
      ),
      ),
          body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppTheme.lightYellow),
              child: ListTile(
                contentPadding: EdgeInsets.all(8),
                isThreeLine: true,
                leading: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(LineIcons.bell),
                ),
                title: Text(
                  'Heyy',
                  style: Style.productName,
                ),
                subtitle: Text(
                  'Your Notification is here!',
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
      ),
    );
  }
}
