import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key? key, Widget? child})
      : super(key: key, child: child ?? Container());

  bool updateShouldNotify(oldWidget) => true;

  static Bloc of(BuildContext context) {
    return (context.getElementForInheritedWidgetOfExactType() as Provider).bloc;
  }
}
