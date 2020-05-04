import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_streams/utils/generic_bloc.dart';
import 'package:flutter_streams/utils/random_color_generator.dart';

class ColorModel extends BlocBase {
  StreamController streamListController = StreamController<Color>.broadcast();
  Sink get colorSink => streamListController.sink;
  Stream<Color> get colorStream => streamListController.stream;

  changeColor() {
    colorSink.add(getRandomColor());
  }

  @override
  dispose() {
    streamListController.close();
  }
}