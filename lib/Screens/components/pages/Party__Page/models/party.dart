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
  Party('501', "حفلة مكتبة الاسكندرية", 'Song', 4.5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/51.png','assets/images/10.png' , '300'),
  Party('502', 'ِAlex Jazz', 'HipHop', 3.9, 'Montaza',
      'Not over there or paradise, fear the result.', 'assets/images/52.png','assets/images/10.png', '300'),

];
