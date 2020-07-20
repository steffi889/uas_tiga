import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_purple, to_yellow }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.purple;

  @override
  Color get initialState => Colors.grey;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_purple) ? Colors.purple[100] : Colors.yellow[100];  
    _color = (event == ColorEvent.to_yellow) ? Colors.yellow[100] : Colors.purple[100];
    yield _color;

  }
}
