import 'package:planets/services/models/characteristics.dart';

class PlanetModel {
  String planetName;
  String homeSubHeading;
  String tempDay;
  String tempNight;
  String homeAsset;
  String infoAsset;
  String dayLength;
  String orbitalPeriod;
  String moons;
  List<Characteristics> characteristics;
  List<String> facts;

  PlanetModel({
    required this.planetName,
    required this.homeSubHeading,
    required this.tempDay,
    required this.tempNight,
    required this.homeAsset,
    required this.infoAsset,
    required this.dayLength,
    required this.orbitalPeriod,
    required this.moons,
    required this.characteristics,
    required this.facts,
  });

}
