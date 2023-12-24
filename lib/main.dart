import 'package:flutter/material.dart';
import 'package:flutter_snake_game/functions.dart';
import 'package:provider/provider.dart';

import 'gamePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameFunctions(),
      child: MaterialApp(
        title: 'Flutter Snake',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: GamePage(),
      ),
    );
  }
}
