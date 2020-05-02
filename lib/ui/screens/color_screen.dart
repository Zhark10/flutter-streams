import 'package:flutter/material.dart';
import 'package:flutter_streams/model/color_model.dart';
import 'package:flutter_streams/model/color_provider.dart';
import 'package:flutter_streams/ui/widgets/color_box.dart';
import 'package:flutter_streams/ui/widgets/color_change_button.dart';

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "BLoC Architecture Demo",
      )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: ColorProvider(
            bloc: ColorModel(),
            child: Column(
              children: <Widget>[
                ColorBox(),
                ColorChangeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}