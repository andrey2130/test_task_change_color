import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_change_color/feature/domain/home_repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final List<Color> _colorsHistory = [];
  int _tapCounter = 0;

  @override
  Future<Color> changeBackgroundColor() async {
    final random = Random();
    final newColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    _colorsHistory.add(newColor);
    return newColor;
  }

  @override
  Future<void> incrementTapCounter() async {
    _tapCounter++;
  }

  @override
  Future<List<Color>> getColorsHistory() async {
    return List.unmodifiable(_colorsHistory);
  }

  @override
  int get tapCounter => _tapCounter;
}
