class Cafe {
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;
  String location;
  String reviews;

  Cafe(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.urlPhoto, this.location, this.reviews);
}

List<Cafe> cafe = [
  Cafe('11', "Costa Coffee", 'Fast Food', 4.5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/5.png','assets/images/10.png' , '300'),
  Cafe('12', 'MC CAFE', 'Fast Food', 3.0, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/6.png','assets/images/10.png', '300'),
  Cafe('13', "StarBucks", 'Fast Food', 4.5, 'Elshatby',
      'Not over there or paradise, fear the result.', 'assets/images/7.png','assets/images/10.png' , '300'),

];
