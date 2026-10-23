import 'package:get/get.dart';
import '../controller/game_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(GameController());
  }
}
