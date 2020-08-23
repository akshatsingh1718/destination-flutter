import './location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Nehru Place', 'assets/images/dest.jpg', [
        LocationFact('Summary', 'adadasdasdadadasdasdada'),
        LocationFact('How to get there', 'dadasdadasdda How to get asdadsda'),
      ]),
    ];
  }
}
