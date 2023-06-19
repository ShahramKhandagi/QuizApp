import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/screens/menu_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: MenuScreen(),
    );
  }
}
