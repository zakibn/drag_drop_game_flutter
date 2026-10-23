import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/game_controller.dart';

class GameOverWidget extends GetView<GameController> {
  const GameOverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Game Over',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        Obx(
          () => Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              controller.result(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width / 10,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextButton(
            onPressed: controller.initGame,
            child: const Text(
              'New Game',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
