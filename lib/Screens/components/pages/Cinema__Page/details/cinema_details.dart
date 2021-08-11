import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/Screens/components/components/Map_Location2.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/Map_LocationC1.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/cinema.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__page/details/MenuPage.dart';
import 'ReviewPage_Cinema.dart';

class Cinema_Details extends StatelessWidget {
  Cinema cinema;
  ListCinema listcinema;

  Cinema_Details(
    this.cinema,
  );
  // final Resturant resturant;
  // const Resturant_Details({Key key, this.resturant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: 'avatarLogo${cinema.id}',
                  child: Container(
                    color: Colors.grey.shade400,
                    child: SizedBox(
                      width: 280,
                      height: 200,
                      //backgroundColor: Colors.white,
                      // child: Image.asset('assets/images/1.jpg'),
                      child: Image.asset(
                        cinema.urlPhoto,
                        width: 280,
                      ),
                      //radius: 80,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              cinema.name,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              cinema.speciality,
              style: TextStyle(
                color: Color(0xff283e66),
                fontSize: 19,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: RatingBar.builder(
                  itemSize: 25,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            ),
            Text('${cinema.reviews.toString()} Reviews',
                style: TextStyle(
                  color: Color(0xff283e66),
                )),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 155,
              height: 45,
              child: RaisedButton(
                color: Colors.white,
                elevation: 4,
                textColor: Color(0xff283e66),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_movies,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    Text(
                      'LIST',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage_Cinema()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 33,
            ),
            SizedBox(
              width: 155,
              height: 45,
              child: RaisedButton(
                color: Colors.white,
                elevation: 4,
                textColor: Color(0xff283e66),
                child: Row(
                  children: [
                    Icon(
                      Icons.comment,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    Text(
                      'REVIEWS',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReviewPage_Cinema()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: size.height / 6,
                    child: SvgPicture.asset(
                        'assets/images/svg/undraw_movie_night_fldd.svg')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff283e66),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
      centerTitle: true,
      title: Text(cinema.name),
      //Text("Food"),
      actions: [
        IconButton(
            onPressed: () {
              if (cinema.id == '22') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Map_LocationC1(cinema)),
                );
              }else if(cinema.id == '21'){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Map_LocationC2(cinema)),
                );
              }
            },
            icon: Icon(Icons.location_pin))
      ],
    );
  }
}
