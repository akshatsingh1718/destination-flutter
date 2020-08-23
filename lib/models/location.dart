import './location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  // Here static is used fot calling fetchAll() using class name Location.fetchAll()
  static List<Location> fetchAll() {
    return [
      Location(1, 'Nehru Place', 'assets/images/dest.jpg', [
        LocationFact('Summary', 'adadasdasdadadasdasdada'),
        LocationFact('How to get there', 'dadasdadasdda How to get asdadsda'),
      ]),
      Location(2, 'Dilshad Garden', 'assets/images/dest2.jpg', [
        LocationFact('Summary', 'adadasdasdadadasdasdada'),
        LocationFact('How to get there', 'dadasdadasdda How to get asdadsda'),
      ]),
      Location(3, 'Noida Sec 18', 'assets/images/dest3.jpg', [
        LocationFact('Summary', 'adadasdasdadadasdasdada'),
        LocationFact('How to get there', 'dadasdadasdda How to get asdadsda'),
      ]),
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();

    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
  }
}
