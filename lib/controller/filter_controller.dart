// ignore_for_file: unnecessary_getters_setters

import '../model/propert_model.dart';

class FilterController{
  double _currentSliderValueMin = 60000;
  double _currentSliderValueMax = 250000;
  final List<String> building = ['Any', 'New', '5+', '10+'];
  final List<PropertModel> propert = [
    PropertModel(
        text: 'Detached',
        path: 'assets/images/svg_pic/undraw_sweet_home_dkhr 5.svg'),
    PropertModel(
        text: 'Apartments',
        path: 'assets/images/svg_pic/undraw_coming_home_re_ausc 2.svg')
  ];

  double get currentSliderValueMin => _currentSliderValueMin;

  set currentSliderValueMin(double value) {
    _currentSliderValueMin = value;
  }

  double get currentSliderValueMax => _currentSliderValueMax;

  set currentSliderValueMax(double value) {
    _currentSliderValueMax = value;
  }
}