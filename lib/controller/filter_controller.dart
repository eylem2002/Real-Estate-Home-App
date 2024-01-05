import 'package:new_batic/model/propert_model.dart';

class FilterController {
  double _currentSliderValueMin = 60000;
  double _currentSliderValueMax = 250000;

  final List<String> building = ['Any', 'New', '5+', '10+'];
  final List<PropertModel> propert = [
    PropertModel(
      text: 'NO',
      imagePath: 'assets/images/svg_pic/undraw_building_re_xfcm.svg',
    ),
    PropertModel(
      text: 'Yes',
      imagePath: 'assets/images/svg_pic/Group 9.svg',
    ),
  ];

  double get currentSliderValueMin => _currentSliderValueMin;

  set currentSliderValueMin(double value) {
    _currentSliderValueMin = value;
  }

  double get currentSliderValueMax => _currentSliderValueMax;

  set currentSliderValueMax(double value) {
    _currentSliderValueMax = value;
  }

  void toggleSelection(int index) {
    for (int i = 0; i < propert.length; i++) {
      propert[i].isSelected = (i == index);
    }
  }
}
