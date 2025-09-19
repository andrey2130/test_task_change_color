import 'package:flutter/material.dart';

abstract class HomeRepo {
  Future<Color> changeBackgroundColor();
  Future<void> incrementTapCounter();
  Future<List<Color>> getColorsHistory();
  int get tapCounter;
}
