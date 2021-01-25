import 'package:flutter/material.dart';
import 'package:fruti/constants/nav.dart';

void main() {
  runApp(Fruti());
}

class Fruti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black54, size: 30)),
      ),
    );
  }
}
