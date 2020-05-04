import 'package:flutter/material.dart';
import 'package:flutter_streams/model/color/color_model.dart';
import 'package:flutter_streams/utils/generic_bloc.dart';

class ColorBox extends StatefulWidget {
  @override
  _ColorBoxState createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  bool selected = false;
  
  ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    colorModel = BlocProvider.of(context);
    colorModel.colorStream.listen((event) {
      setState(() {
        selected = !selected;
      });
    });
    return Column(
      children: <Widget>[
        Container(
          child: StreamBuilder(
              initialData: Colors.red,
              stream: colorModel.colorStream,
              builder: (BuildContext context, snapShot) =>
                  Center(
                    child: AnimatedContainer(
                      height: selected ? 200.0 : 100.0,
                      width: selected ? 100.0 : 200.0,
                      color: snapShot.data,
                  duration: Duration(seconds: 1))),
                    ),
                  ),
      ],
    );
  }
}
