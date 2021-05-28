class Party {
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;
  String location;
  String reviews;

  Party(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.urlPhoto, this.location, this.reviews);
}

List<Party> party = [
  Party('1', "Mcdonald's", 'Fast Food', 4.5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/1.png','assets/images/10.png' , '300'),
  Party('2', 'Hardees', 'Fast Food', 3.0, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/2.png','assets/images/10.png', '300'),
  Party('3', 'Papa Johns', 'Pizza', 5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/3.png','assets/images/10.png', '300'),
  Party('4', 'KFC', 'Fast Food', 5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/4.png','assets/images/10.png', '300'),

];
