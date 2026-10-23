import 'package:flutter/material.dart';

import '../../controller/game_controller.dart';
import '../../data/model/item_model.dart';

class AnimalDragTarget extends StatelessWidget {
  final ItemModel item;
  final GameController controller;

  const AnimalDragTarget({
    super.key,
    required this.item,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<ItemModel>(
      onWillAcceptWithDetails: (details) {
        controller.onWillAccept(item);
        return true;
      },
      onLeave: (receivedItem) {
        controller.onLeave(item);
      },
      onAcceptWithDetails: (details) {
        controller.onAccept(target: item, received: details.data);
      },
      builder: (context, candidateData, rejectedData) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: item.accepting ? Colors.grey[400] : Colors.grey[200],
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.width / 6.5,
          width: MediaQuery.of(context).size.width / 3,
          margin: const EdgeInsets.all(8),
          child: Text(item.name, style: Theme.of(context).textTheme.titleLarge),
        );
      },
    );
  }
}
