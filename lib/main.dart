import 'package:flutter/material.dart';
import 'package:mom2b/Tabbar.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      canvasColor: Colors.transparent,
    ),
    debugShowCheckedModeBanner: false,
    home: Tabbar(),
  ));
}
