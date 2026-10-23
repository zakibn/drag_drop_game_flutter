import '../../model/item_model.dart';

class AnimalsData {
  static List<ItemModel> getAnimals() {
    return [
      ItemModel(
        name: 'Lion',
        imagePath: 'assets/images/lion.png',
        value: 'lion',
      ),
      ItemModel(
        name: 'Camel',
        imagePath: 'assets/images/camel.png',
        value: 'camel',
      ),
      ItemModel(name: 'Cat', imagePath: 'assets/images/cat.png', value: 'cat'),
      ItemModel(name: 'Cow', imagePath: 'assets/images/cow.png', value: 'cow'),
      ItemModel(name: 'Dog', imagePath: 'assets/images/dog.png', value: 'dog'),
      ItemModel(name: 'Fox', imagePath: 'assets/images/fox.png', value: 'fox'),
      ItemModel(name: 'Hen', imagePath: 'assets/images/hen.png', value: 'hen'),
      ItemModel(
        name: 'Horse',
        imagePath: 'assets/images/horse.png',
        value: 'horse',
      ),
      ItemModel(
        name: 'Panda',
        imagePath: 'assets/images/panda.png',
        value: 'panda',
      ),
      ItemModel(
        name: 'Sheep',
        imagePath: 'assets/images/sheep.png',
        value: 'sheep',
      ),
    ];
  }
}
