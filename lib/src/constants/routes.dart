import 'package:controller/src/screens/display_screen.dart';
import 'package:controller/src/screens/gate_screen.dart';
import 'package:flutter/material.dart';

var route = <String, WidgetBuilder>{
  '/': (context) => DisplayScreen(),
  '/gate_screen': (context) => GateScreen(
        gateName: '',
      )
};
