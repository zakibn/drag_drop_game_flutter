class ItemModel {
  final String name;
  final String imagePath;
  final String value;

  bool accepting;

  ItemModel({
    required this.name,
    required this.imagePath,
    required this.value,
    this.accepting = false,
  });
}
