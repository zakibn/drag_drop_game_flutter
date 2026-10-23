import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/game_controller.dart';
import '../widget/animal_drag_target.dart';
import '../widget/animal_draggable.dart';
import '../widget/game_over_widget.dart';
import '../widget/score_widget.dart';

class HomeScreen extends GetView<GameController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ScoreWidget(),

              Obx(() {
                if (controller.gameOver.value) {
                  return const GameOverWidget();
                }

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),

                    Expanded(
                      flex: 3,
                      child: Column(
                        children:
                            controller.items.map((item) {
                              return AnimalDraggable(
                                key: ValueKey(item.value),
                                item: item,
                              );
                            }).toList(),
                      ),
                    ),

                    const Spacer(),

                    Expanded(
                      flex: 3,
                      child: Column(
                        children:
                            controller.items2.map((item) {
                              return AnimalDragTarget(
                                key: ValueKey(item.value),
                                item: item,
                                controller: controller,
                              );
                            }).toList(),
                      ),
                    ),

                    const Spacer(),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
