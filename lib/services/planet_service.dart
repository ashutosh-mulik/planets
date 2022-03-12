import 'package:planets/services/models/characteristics.dart';
import 'package:planets/services/models/planet_model.dart';

class PlanetService {
  List<PlanetModel> getPlanets() {
    return [
      /// 1. mercury
      PlanetModel(
        planetName: 'mercury',
        homeSubHeading: 'ROMAN GOD OF SPEED',
        tempDay: '427°C',
        tempNight: '-173°C',
        homeAsset: 'assets/img_planets/mercury.png',
        infoAsset: 'assets/img_planets/mercury.png',
        dayLength: '58',
        orbitalPeriod: '88',
        moons: '0',
        facts: [
          'One of five planets visible with the naked eye a, Mercury is just 4,879 Kilometres across its equator, compared with 12,742 Kilometres for the Earth.',
          'Mercury is very dense. Each cubic centimetre has a density of 5.4 grams, with only the Earth having a higher density.',
          'As the iron core of the planet cooled and contracted, the surface of the planet became wrinkled. Scientist have named these wrinkles, Lobate Scarps.',
          'Normally the core of smaller planets cools rapidly, but after extensive research, the results were not in line with those expected from a solid core.',
          'The surface of Mercury which faces the Sun sees temperatures of up to 427°C, whilst on the alternate side this can be as low as -173°C',
          'Owing to its proximity to the Sun, Mercury is a difficult planet to visit. During 1974 and 1975 Mariner 10 flew by Mercury three times, during this time they mapped just under half of the planet’s surface.',
          'Mercury has just 38% the gravity of Earth, this is too little to hold on to what atmosphere it has which is blown away by solar winds.',
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.5',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '3.7',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '2.4',
            unit: 'x 10³\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '3.3',
            unit: 'x 10²³\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '6.1',
            unit: 'x 10¹⁰\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '5.4',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 2. venus
      PlanetModel(
        planetName: 'venus',
        homeSubHeading: 'ROMAN GODDESS OF LOVE',
        tempDay: '462°C',
        tempNight: '462°C',
        homeAsset: 'assets/img_planets/venus.png',
        infoAsset: 'assets/img_planets/venus.png',
        dayLength: '243',
        orbitalPeriod: '225',
        moons: '0',
        facts: [
          'It takes Venus longer to rotate once on its axis than to complete one orbit of the Sun. That’s 243 Earth days to rotate once.',
          'Its mean temperature is 462°C. This is because of the high concentration of carbon dioxide in Venus’ atmosphere which works to produce an intense greenhouse effect',
          'The clouds of sulfuric acid in Venus’ atmosphere make it reflective and shiny and obscure our view of its surface.',
          'It is thought that Venus was named after the beautiful Roman goddess (counterpart to the Greek Aphrodite) due to its bright, shining appearance in the sky.',
          'Because Venus is easy to spot with the naked eye, it is impossible to say who discovered the planet.'
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.5',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '8.8',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '6.0',
            unit: 'x 10³\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '4.8',
            unit: 'x 10²⁴\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '9.2',
            unit: 'x 10¹¹\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '5.2',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 3. earth
      PlanetModel(
          planetName: 'earth',
          homeSubHeading: 'HOME',
          tempDay: '13.9°C',
          tempNight: '13.9°C',
          homeAsset: 'assets/img_planets/earth.png',
          infoAsset: 'assets/img_planets/earth.png',
          dayLength: '1',
          orbitalPeriod: '365',
          moons: '1',
          facts: [
            'Earth is the only planet in the Solar System with plate tectonics. Basically, the outer crust of the Earth is broken up into regions known as tectonic plates.',
            'Many people tend to think that the Earth is a sphere. In fact, between the 6th cenury BCE and the modern era, this remained the scientific consensus.',
            'If you could separate the Earth out into piles of material, you’d get 32.1 % iron, 30.1% oxygen, 15.1% silicon, and 13.9% magnesium.',
            'When astronauts first went into the space, they looked back at the Earth with human eyes for the first time.',
            'Earth’s atmosphere is thickest within the first 50 km from the surface or so, but it actually reaches out to about 10,000 km into space.',
            'The Earth is like a great big magnet, with poles at the top and bottom near to the actual geographic poles.',
            'It actually takes 23 hours, 56 minutes and 4 seconds for the Earth to rotate once completely on its axis, which astronomers refer to as a Sidereal Day.'
          ],
          characteristics: [
            Characteristics(
              title: 'age',
              value: '4.5',
              unit: 'billion\nyears',
              asset: 'assets/icons/age.png',
            ),
            Characteristics(
              title: 'gravity',
              value: '9.8',
              unit: 'm/s²',
              asset: 'assets/icons/gravity.png',
            ),
            Characteristics(
              title: 'radius',
              value: '6.3',
              unit: 'x 10³\nkm',
              asset: 'assets/icons/radius.png',
            ),
            Characteristics(
              title: 'mass',
              value: '5.9',
              unit: 'x 10²⁴\nkg',
              asset: 'assets/icons/mass.png',
            ),
            Characteristics(
              title: 'volume',
              value: '1.0',
              unit: 'x 10¹²\nkg³',
              asset: 'assets/icons/volume.png',
            ),
            Characteristics(
              title: 'density',
              value: '5.5',
              unit: 'g/cm³',
              asset: 'assets/icons/density.png',
            ),
          ]),

      /// 4. mars
      PlanetModel(
        planetName: 'mars',
        homeSubHeading: 'ROMAN GOD OF WAR',
        tempDay: '20°C',
        tempNight: '-73°C',
        homeAsset: 'assets/img_planets/mars.png',
        infoAsset: 'assets/img_planets/mars.png',
        dayLength: '1',
        orbitalPeriod: '687',
        moons: '2',
        facts: [
          'Even though Mars has only 15% of the Earth’s volume and just over 10% of the Earth’s mass, around two thirds of the Earth’s surface is covered in water.',
          'The ancient Greeks called the planet Ares, after their god of war; the Romans then did likewise, associating the planet’s blood-red colour with Mars, their own god of war.',
          'For years Mars has been known to have water in the form of ice. The first signs of trickling water are dark stripes or stains on crater wall and cliffs seen in satellite images.',
          'Mars has two small moons, Phobos and Deimos. They were discovered in 1877 by astronomer Asaph Hall, who named them for the Latin terms “fear” and “panic”.',
          'Mars has the largest volcano in the solar system – Olympus Mons. It measures some 600 kilometres across and rises nearly 27 kilometres above the surrounding terrain.',
          'The Valles Marineris is an extensive canyon system on the Mars equator. It is 4,200 kilometres long and, in places, is 7 kilometres deep.'
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.6',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '3.7',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '3.3',
            unit: 'x 10³\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '6.3',
            unit: 'x 10²³\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '1.6',
            unit: 'x 10¹¹\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '3.9',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 5. jupiter
      PlanetModel(
        planetName: 'jupiter',
        homeSubHeading: 'KING OF THE ROMAN GODS',
        tempDay: '-150°C',
        tempNight: '-150°C',
        homeAsset: 'assets/img_planets/jupiter.png',
        infoAsset: 'assets/img_planets/jupiter.png',
        dayLength: '0.3',
        orbitalPeriod: '4380',
        moons: '79',
        facts: [
          'Jupiter is the fourth brightest object in the sky and one of the five visible planets ( Mercury, Venus, Mars, Saturn ).',
          'Through the observations of Jupiter, the discovery of the four Galilean moons ended the belief that everything revolved around the Earth.',
          'Jupiter has a total of 79 confirmed moons. It is second only to Saturn when it comes to the total amount of satellites.',
          'Though they can be seen only through ultraviolet, Jupiter’s auroras are the brightest in the Solar System.',
          'Jupiter’s mass is almost twice of all the Solar System’s planets combined. It is 318 times more massive than Earth.',
          'Jupiter is on average about 5.2 AU away from the Sun. One AU is equivalent to 150 million km / 93 million mi.'
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.6',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '24',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '6.9',
            unit: 'x 10⁴\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '1.8',
            unit: 'x 10²⁷\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '1.4',
            unit: 'x 10¹⁵\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '1.3',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 6. saturn
      PlanetModel(
        planetName: 'saturn',
        homeSubHeading: 'FATHER OF JUPITER',
        tempDay: '-173°C',
        tempNight: '-113°C',
        homeAsset: 'assets/img_planets/saturn.png',
        infoAsset: 'assets/img_planets/info_saturn.png',
        dayLength: '0.4',
        orbitalPeriod: '10585',
        moons: '62',
        facts: [
          'Saturn is huge. It is the second largest planet in our Solar System. Jupiter is the only planet that is bigger.',
          'You cannot stand on Saturn. It is not like Earth. Saturn is made mostly of gases. It has a lot of helium. This is the same kind of gas that you put in balloons.',
          'Its beautiful rings are not solid. They are made up of bits of ice, dust and rock.',
          'Some of these bits are as small as grains of sand. Some are much larger than tall buildings. Some are up to a kilometer (more than half-a-mile) across.',
          'The rings are huge but thin. The main rings could almost go from Earth to the moon. Yet, they are less than a kilometer thick.'
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.5',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '10',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '5.8',
            unit: 'x 10⁴\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '5.6',
            unit: 'x 10²⁶\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '8.2',
            unit: 'x 10¹⁴\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '687',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 7. uranus
      PlanetModel(
        planetName: 'uranus',
        homeSubHeading: 'GREEK GOD OF THE SKY',
        tempDay: '-195°C',
        tempNight: '-195°C',
        homeAsset: 'assets/img_planets/uranus.png',
        infoAsset: 'assets/img_planets/uranus.png',
        dayLength: '0.2',
        orbitalPeriod: '30660',
        moons: '27',
        facts: [
          'Uranus is the seventh planet from the Sun, orbiting at a distance of 2.88 billion km.',
          'All of the planets in the Solar System rotate on their axis, with a tilt that’s similar to the Sun.',
          'A sidereal day on Uranus (that is, the time it takes for the planet to complete a single oration on its axis) is only about 17 hours long.',
          'The least dense planet in the Solar System is Saturn. In fact, with a mean density of 0.687 g/cm3, Saturn’s body is actually less dense than water (1 g/cm³).',
          'When it comes to ring systems, Saturn’s are the most famous. In addition to be colorful and far-reaching, they are also highly visible.',
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.5',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '8.8',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '2.5',
            unit: 'x 10⁴\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '8.6',
            unit: 'x 10²⁵\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '6.8',
            unit: 'x 10¹³\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '1.2',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),

      /// 8. neptune
      PlanetModel(
        planetName: 'neptune',
        homeSubHeading: 'ROMAN GOD OF THE SEA',
        tempDay: '-221°C',
        tempNight: '-221°C',
        homeAsset: 'assets/img_planets/neptune.png',
        infoAsset: 'assets/img_planets/neptune.png',
        dayLength: '0.6',
        orbitalPeriod: '59860',
        moons: '14',
        facts: [
          'When it was first discovered by in 1846, Neptune became the most distant planet in the Solar System.',
          'With an equatorial radius of only 24,764 km, Neptune is smaller than all the other gas giants in the Solar System: Jupiter, Saturn and Uranus.',
          'Neptune is a ball of gas and ice, probably with a rocky core. There’s no way you could actually stand on the surface of Neptune without just sinking in.',
          'The first person to have seen Neptune was likely Galileo, who marked it as a star in one of his drawings.',
          'Think a hurricane is scary? Imagine a hurricane with winds that go up to 2,100 km/hour.',
          'At the top of its clouds, temperatures on Neptune can dip down to 51.7 Kelvin, or -221.45 degrees Celsius (-366.6 °F).',
        ],
        characteristics: [
          Characteristics(
            title: 'age',
            value: '4.5',
            unit: 'billion\nyears',
            asset: 'assets/icons/age.png',
          ),
          Characteristics(
            title: 'gravity',
            value: '11',
            unit: 'm/s²',
            asset: 'assets/icons/gravity.png',
          ),
          Characteristics(
            title: 'radius',
            value: '2.4',
            unit: 'x 10⁴\nkm',
            asset: 'assets/icons/radius.png',
          ),
          Characteristics(
            title: 'mass',
            value: '1.0',
            unit: 'x 10²⁶\nkg',
            asset: 'assets/icons/mass.png',
          ),
          Characteristics(
            title: 'volume',
            value: '6.2',
            unit: 'x 10¹³\nkg³',
            asset: 'assets/icons/volume.png',
          ),
          Characteristics(
            title: 'density',
            value: '1.6',
            unit: 'g/cm³',
            asset: 'assets/icons/density.png',
          ),
        ],
      ),
    ];
  }
}
