class Travel {
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;

  //model constuctor
  Travel(this.name, this.duration, this.description, this.location, this.rating,
      this.distance, this.imageUrl, this.cost);

  //List of travel items
  static List<Travel> getTravelItems() {
    final List<Travel> _travelList = [
      Travel(
          'Bromo Tengger',
          4,
          'An active volcano and part of the Tengger, the sunrise on bromo is the best view',
          'Pasuruan',
          4.6,
          3,
          ['assets/images/pict1.jpg', 'assets/images/tmb1.jpg'],
          230),
      Travel(
          'Madakaripura',
          5,
          'One of the most spectacular waterfalls not only in East Java and Indonesia but also in the world',
          'Probolinggo',
          4.3,
          6,
          ['assets/images/pict2.jpg', 'assets/images/tmb2.jpg'],
          432),
      Travel(
          'Ijen Crater',
          3,
          'Ijen Crater have many beautiful species of plants that can be found there',
          'Bondowoso',
          4.5,
          8,
          ['assets/images/pict3.jpg', 'assets/images/tmb3.jpg'],
          283),
      Travel(
          'Tumpak Sewu',
          3,
          'This significantly untouched mammoth beauty is truly a unique adventure without the crowds',
          'Lumajang',
          4.2,
          16,
          ['assets/images/pict4.jpg', 'assets/images/tmb4.jpg'],
          389),
      Travel(
          'Ngudel Beach',
          2,
          'The best thing is the beach has a pure soft-textured sandy shoreline. It feels like walking on silk',
          'Malang',
          4.8,
          21,
          ['assets/images/pict5.jpg', 'assets/images/tmb5.jpg'],
          534),
    ];
    return _travelList;
  }

//Get the nearest list items (Those whose distance is less than 10kms
  static List<Travel> getNearestItems() {
    List<Travel> _travelList = Travel.getTravelItems();
    return _travelList.where((element) => element.distance < 10).toList();
  }
}