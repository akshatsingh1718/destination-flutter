import 'package:flutter/material.dart';
import './location_detail/location_detail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber[400]),
      home: LocationDetail(),
    );
  }
}
