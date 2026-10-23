import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

import '../data/datasource/static/animals_data.dart';
import '../data/model/item_model.dart';

class GameController extends GetxController {
  final AudioCache player = AudioCache();

  final RxList<ItemModel> items = <ItemModel>[].obs;
  final RxList<ItemModel> items2 = <ItemModel>[].obs;

  final RxInt score = 0.obs;
  final RxBool gameOver = false.obs;

  @override
  void onInit() {
    super.onInit();
    initGame();
  }

  void initGame() {
    score.value = 0;
    gameOver.value = false;

    items.assignAll(AnimalsData.getAnimals());
    items2.assignAll(AnimalsData.getAnimals());

    items.shuffle();
    items2.shuffle();
  }

  void onWillAccept(ItemModel item) {
    item.accepting = true;
    items2.refresh();
  }

  void onLeave(ItemModel item) {
    item.accepting = false;
    items2.refresh();
  }

  void onAccept({required ItemModel target, required ItemModel received}) {
    target.accepting = false;

    if (target.value == received.value) {
      items.remove(received);
      items2.remove(target);

      score.value += 10;

      // player.play('true.wav');

      if (items.isEmpty) {
        gameOver.value = true;
      }
    } else {
      score.value -= 5;
      //   player.play('false.wav');
      items2.refresh();
    }
  }

  String result() {
    if (score.value == 100) {
      return 'Awesome!';
    }

    return 'Try again to get a better score';
  }

  @override
  void onClose() {
    player.clearAll();
    super.onClose();
  }
}
