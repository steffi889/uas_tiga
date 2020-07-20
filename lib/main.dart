import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tryy_12/color_bloc.dart';

import 'color_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
          builder: (context) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.purple[100],
            onPressed: () {
              bloc.dispatch(ColorEvent.to_purple);
            },
          ),
           FloatingActionButton(
            backgroundColor: Colors.yellow[100],
            onPressed: () {
              bloc.dispatch(ColorEvent.to_yellow);
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple[100],
            onPressed: () {
              bloc.dispatch(ColorEvent.to_purple);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("BloC dengan flutter_bloc"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentCollor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: currentCollor,
            duration: Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}
