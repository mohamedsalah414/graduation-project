class ListCinema_reviews{
  String id;
  String name;
  String picprofile;
  String comment;
  String date;
  ListCinema_reviews(this.id,this.name, this.comment,this.picprofile,this.date);
}

List<ListCinema_reviews> review =[
  ListCinema_reviews('1','Ali','Good','assets/images/propic.png','01/01/2021'),
  ListCinema_reviews('2','Hassan','Bad','assets/images/propic.png','01/01/2021'),
  ListCinema_reviews('3','Mai','I like it','assets/images/propic.png','01/01/2021'),
  ListCinema_reviews('4','Menna','100/100','assets/images/propic.png','01/01/2021'),
];