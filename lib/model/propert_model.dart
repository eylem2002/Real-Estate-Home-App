class PropertModel {
  final String text;
  final String imagePath;
  bool isSelected;

  PropertModel({
    required this.text,
    required this.imagePath,
    this.isSelected = false,
  });
}