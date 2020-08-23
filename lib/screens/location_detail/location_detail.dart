import 'package:flutter/material.dart';
import './image_banner.dart';
import './text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          /*
        For column MainAxisAlignment is from top to bottom
        and for row left to right
        */
          mainAxisAlignment: MainAxisAlignment.start,
          /**
         * For column CrossAxisAlignment is opposite of MainAxisAlignment
         * so it is left to right and same for Row as well.
         */
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
            // using cascade to add iterable list in the end of children's list
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
