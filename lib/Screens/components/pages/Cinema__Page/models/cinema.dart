class Cinema {
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;
  String location;
  String reviews;

  Cinema(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.urlPhoto, this.location, this.reviews);
}

List<Cinema> cinema = [
  Cinema('21', "Renaissance", 'Cinema', 4.5, 'San',
      'Not over there or paradise, fear the result.', 'assets/images/8.png','assets/images/10.png' , '300'),
  Cinema('22', "Vox", 'Cinema', 4.5, 'Carefor',
      'Not over there or paradise, fear the result.', 'assets/images/9.jpg','assets/images/10.png' , '300'),


];
