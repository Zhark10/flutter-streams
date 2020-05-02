import 'package:flutter/material.dart';
import 'package:flutter_streams/model/color_model.dart';
import 'package:flutter_streams/utils/generic_bloc.dart';

class ColorChangeButton extends StatelessWidget {
  ColorModel colorModel;
  @override
  Widget build(BuildContext context) {
    colorModel = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: RaisedButton(
              child: Text("Change Color"),
              color: Colors.blue,
              onPressed: () {
                colorModel.changeColor();
              },
            ),
          ),
        ),
      ],
    );
  }
}
