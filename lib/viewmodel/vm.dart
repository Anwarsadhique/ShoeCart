import 'package:flutter/material.dart';

import '../model/models.dart';

class ViewModel extends ChangeNotifier {
  final List<ModelClass> _images = [
    ModelClass(
        image:
            "https://i.pinimg.com/236x/45/e7/c2/45e7c2e02c789f6ea56258497395c14f.jpg",
        name: 'Nike Air Zoom Pegasus 38',
        price: 3000,
        size: 1),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/57/fb/8f/57fb8f6ea9af32f763a28b50d290b73e.jpg",
        name: 'Adidas Ultraboost 21',
        price: 4000,
        size: 1.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/a6/a6/36/a6a63605bacef9889643be4c519e7d26.jpg",
        name: 'New Balance Fresh Foam 1080v11',
        price: 5000,
        size: 2),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/98/ba/c8/98bac80dff3f3f54490f9b0f431a53bf.jpg",
        name: 'ASICS Gel-Kayano 28',
        price: 6000,
        size: 2.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/36/93/1f/36931fa912ed0e91dff5c261c9ec0661.jpg",
        name: 'Under Armour HOVR  Connected',
        price: 7000,
        size: 3),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/79/44/79/7944791f5f7a69f3bc3c1289740d27b4.jpg",
        name: 'Hoka One One Clifton 8',
        price: 8000,
        size: 1),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/79/8b/1b/798b1bb3694f867e0fcbaf214d00adb4.jpg",
        name: 'Hoka One One Clifton 8',
        price: 9000,
        size: 1.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/aa/0b/b4/aa0bb4a785710342b2e1fbca2f51e0c3.jpg",
        name: 'Merrell Moab 2 Waterproof',
        price: 1000,
        size: 2),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/09/92/86/0992863aa5d7743b718565134b5ff0c0.jpg",
        name: 'Skechers GOrun Razor+ Hyper',
        price: 1100,
        size: 2.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/01/f5/aa/01f5aa8e1a6722579fbe8500f619a87b.jpg",
        name: 'Converse Chuck Taylor All Star',
        price: 1200,
        size: 3),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/ca/a6/fb/caa6fbc8665968910c0959761022340e.jpg",
        name: 'Timberland 6-Inch Premium Boot',
        price: 1300,
        size: 1),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/45/e7/c2/45e7c2e02c789f6ea56258497395c14f.jpg",
        name: 'Nike Air Zoom Pegasus 38',
        price: 3000,
        size: 3),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/57/fb/8f/57fb8f6ea9af32f763a28b50d290b73e.jpg",
        name: 'Adidas Ultraboost 21',
        price: 4000,
        size: 3.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/a6/a6/36/a6a63605bacef9889643be4c519e7d26.jpg",
        name: 'New Balance Fresh Foam 1080v11',
        price: 5000,
        size: 4),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/98/ba/c8/98bac80dff3f3f54490f9b0f431a53bf.jpg",
        name: 'ASICS Gel-Kayano 28',
        price: 6000,
        size: 4.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/36/93/1f/36931fa912ed0e91dff5c261c9ec0661.jpg",
        name: 'Under Armour HOVR  Connected',
        price: 7000,
        size: 5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/79/44/79/7944791f5f7a69f3bc3c1289740d27b4.jpg",
        name: 'Hoka One One Clifton 8',
        price: 8000,
        size: 5.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/79/8b/1b/798b1bb3694f867e0fcbaf214d00adb4.jpg",
        name: 'Hoka One One Clifton 8',
        price: 9000,
        size: 5.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/aa/0b/b4/aa0bb4a785710342b2e1fbca2f51e0c3.jpg",
        name: 'Merrell Moab 2 Waterproof',
        price: 1300,
        size: 6),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/09/92/86/0992863aa5d7743b718565134b5ff0c0.jpg",
        name: 'Skechers GOrun Razor+ Hyper',
        price: 1100,
        size: 6.5),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/01/f5/aa/01f5aa8e1a6722579fbe8500f619a87b.jpg",
        name: 'Converse Chuck Taylor All Star',
        price: 1200,
        size: 7),
    ModelClass(
        image:
            "https://i.pinimg.com/236x/ca/a6/fb/caa6fbc8665968910c0959761022340e.jpg",
        name: 'Timberland 6-Inch Premium Boot',
        price: 1300,
        size: 8),
  ];
  double? _selectedSize;
  RangeValues _currentRangeValues = const RangeValues(0, 10000);
  late List<ModelClass> _filteredShoes;
  ViewModel() {
    _filteredShoes = _images;
  }

  List<ModelClass> get shoes => _selectedSize == null
      ? _filteredShoes
      : _filteredShoes.where((shoe) => shoe.size == _selectedSize).toList();

  double? get selectedSize => _selectedSize;

  set selectedSize(double? size) {
    _selectedSize = size;
    notifyListeners();
  }

  // // priceview
  RangeValues get currentRangeValues => _currentRangeValues;

  set currentRangeValues(RangeValues values) {
    _currentRangeValues = values;
    filterShoesByPrice();
    notifyListeners();
  }

  void filterShoesByPrice() {
    _filteredShoes = _images.where((shoe) {
      return shoe.price >= _currentRangeValues.start &&
          shoe.price <= _currentRangeValues.end;
    }).toList();
  }

  int rangeMin = 0;
  int rangeMax = 10000;
  RangeValues value = const RangeValues(0, 10000);
  // RangeValues get _value => _currentRangeValues;

  void updateValues(RangeValues values) {
    _currentRangeValues = values;
    rangeMin = _currentRangeValues.start.toInt();
    rangeMax = _currentRangeValues.end.toInt();
    print(_images.length);
    notifyListeners();
  }
}
