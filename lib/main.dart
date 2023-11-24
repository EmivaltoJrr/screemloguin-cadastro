import 'package:flutter/material.dart';
import 'package:loguin/routes.dart';
import 'package:loguin/screens/loguin/loguin_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoguinScrenn(),
    );
  }
}
