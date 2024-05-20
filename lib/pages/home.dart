import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/1.jpg", height: 200.0, width: 200.0),
        const Text(
          "Bienvenu chez moi",
          style: TextStyle(fontSize: 40),
        ),
        const Text(
          "Code Manager",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
