import 'package:flutter/material.dart';

import 'home_page.dart';

class MyAnimation2 extends StatelessWidget {

  const MyAnimation2({ super.key });

   @override
    Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('ExpansionTile Sample')),
        body: const HomePage(),
      ),
    );
  }
}