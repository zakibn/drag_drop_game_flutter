import 'package:flutter/material.dart';

import '../../data/model/item_model.dart';

class AnimalDraggable extends StatelessWidget {
  final ItemModel item;

  const AnimalDraggable({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Draggable<ItemModel>(
        data: item,
        feedback: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(item.imagePath),
          radius: 30,
        ),
        childWhenDragging: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(item.imagePath),
          radius: 50,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(item.imagePath),
          radius: 30,
        ),
      ),
    );
  }
}
