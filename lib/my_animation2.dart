import 'package:flutter/material.dart';

import 'home_page.dart';

class MyAnimation2 extends StatelessWidget {

  const MyAnimation2({ super.key });

   @override
    Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício de animação 2'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const HomePage(),
      ),
    );
  }
}