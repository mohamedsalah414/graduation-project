class ListFood_reviews{
  String id;
  String name;
  String picprofile;
  String comment;
  String date;
  ListFood_reviews(this.id,this.name, this.comment,this.picprofile,this.date);
}

List<ListFood_reviews> review =[
  ListFood_reviews('1','Ali','Good','assets/images/propic.png','01/01/2021'),
  ListFood_reviews('2','Hassan','Bad','assets/images/propic.png','01/01/2021'),
  ListFood_reviews('3','Mai','I like it','assets/images/propic.png','01/01/2021'),
  ListFood_reviews('4','Menna','100/100','assets/images/propic.png','01/01/2021'),
];