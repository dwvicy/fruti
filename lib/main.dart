import 'package:flutter/material.dart';
import 'package:fruti/constants/fruitPage.dart';
import 'package:fruti/constants/nav.dart';
import 'package:fruti/constants/notifs.dart';
import 'package:fruti/constants/veggiePage.dart';

void main() {
  runApp(Fruti());
}

class Fruti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black54, size: 30)),
          fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHome(),
        '/notif': (context) => NotifList(),
        '/fruit': (context) => FruitPage(),
        '/veggie': (context) => VeggiePage()
      },
    );
  }
}
