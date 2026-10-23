import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/game_controller.dart';

class ScoreWidget extends GetView<GameController> {
  const ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Obx(
        () => Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Score: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextSpan(
                text: '${controller.score.value}',
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
