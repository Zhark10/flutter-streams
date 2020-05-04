import 'package:flutter/material.dart';

import 'color_model.dart';

class ColorProvider extends InheritedWidget {
  final ColorModel bloc;
  final Widget child;
  ColorProvider({this.bloc, this.child}) : super(child: child);

  static ColorProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ColorProvider>();
  @override
  bool updateShouldNotify(ColorProvider oldWidget) {
    return bloc != oldWidget.bloc;
  }
}