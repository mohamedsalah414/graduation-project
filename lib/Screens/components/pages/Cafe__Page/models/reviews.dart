class ListCafe_reviews{
  String id;
  String name;
  String picprofile;
  String comment;
  String date;
  ListCafe_reviews(this.id,this.name, this.comment,this.picprofile,this.date);
}

List<ListCafe_reviews> review =[
  ListCafe_reviews('1','Ali','Good','assets/images/propic.png','01/01/2021'),
  ListCafe_reviews('2','Hassan','Bad','assets/images/propic.png','01/01/2021'),
  ListCafe_reviews('3','Mai','I like it','assets/images/propic.png','01/01/2021'),
  ListCafe_reviews('4','Menna','100/100','assets/images/propic.png','01/01/2021'),
];