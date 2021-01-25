import 'package:flutter/material.dart';
import 'package:fruti/constants/nav.dart';
import 'package:fruti/constants/notifs.dart';

void main() {
  runApp(Fruti());
}

class Fruti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/':(context) => MyHome(),
        '/notif':(context) => NotifList()
      },
    );
  }
}
