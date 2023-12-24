import 'package:flutter/material.dart';
import 'package:flutter_snake_game/functions.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  restart();
  final step = 20;
  int roundToNearestTens(int num) {
    int divisor = step;
    int output = (num ~/ divisor) * divisor;
    if (output == 0) {
      output += step;
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final lowerBoundX = step;
    final lowerBoundY = step;
    final upperBoundX = roundToNearestTens(screenWidth.toInt() - step);
    final upperBoundY = roundToNearestTens(screenHeight.toInt() - step);

    return Consumer<GameFunctions>(
      builder: (context, controller, _) => Scaffold(
        body: Container(
          color: Color(0XFFF5BB00),
          child: Stack(
            children: [
              controller.getPlayAreaBorder(),
              Stack(
                children: controller.getPieces(context),
              ),
              controller.getControls(),
              controller.food,
              controller.getScore(),
            ],
          ),
        ),
      ),
    );
  }
}
