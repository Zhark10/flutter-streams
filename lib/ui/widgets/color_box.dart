import 'package:flutter/material.dart';
import 'package:flutter_streams/model/color_model.dart';
import 'package:flutter_streams/utils/generic_bloc.dart';

class ColorBox extends StatelessWidget {
  ColorModel colorModel;
  @override
  Widget build(BuildContext context) {
    colorModel = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: StreamBuilder(
            initialData: Colors.red,
            stream: colorModel.colorStream,
            builder: (BuildContext context, snapShot) => Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: snapShot.data,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
