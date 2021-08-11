import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/Profile.dart';
import 'package:graduation_project/Screens/components/pages/Cafe__Page/Category_Buttons_Cafe.dart';
import 'package:graduation_project/Screens/components/pages/Food__page/Category_Buttons.dart';
import 'models/users.dart';
import 'pages/Cinema__Page/Nearby_location_Cinema.dart';
import 'pages/Party__Page/Nearby_location_Party.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Home_Category extends StatefulWidget {
  final Users user;

  const Home_Category({Key key, this.user}) : super(key: key);

  @override
  _Home_CategoryState createState() => _Home_CategoryState(user);
}

// ignore: camel_case_types
class _Home_CategoryState extends State<Home_Category> {
  Users user;
  _Home_CategoryState(this.user);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Hero(
                        tag: 'logo',
                        child: Image.asset('assets/images/logo.png')),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(5),

                    // decoration: ShapeDecoration(
                    //   color: Colors.black,
                    //   shape: CircleBorder(),
                    // ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
                          );
                        },
                        icon: Icon(Icons.person)),
                  )
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 127,
                      height: 132,
                      child: RaisedButton(
                        elevation: 13,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_cafe,
                              size: 50,
                              color: Color(0xff283e66),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                            ),
                            Text('Cafe',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff283e66)))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category_Buttons_Cafe()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                      width: 127,
                      height: 132,
                      child: RaisedButton(
                        elevation: 13,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant,
                              size: 50,
                              color: Color(0xff283e66),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                            ),
                            Text('Food',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff283e66)))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category_Buttons()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 60,
              // ),
              SizedBox(
                width: size.width,
                height: size.height / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 127,
                      height: 132,
                      child: RaisedButton(
                        elevation: 13,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.movie,
                              size: 50,
                              color: Color(0xff283e66),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                            ),
                            Text('Cinema',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff283e66)))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Nearby_location_Cinema()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                      width: 127,
                      height: 132,
                      child: RaisedButton(
                        elevation: 13,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_activity,
                              size: 50,
                              color: Color(0xff283e66),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                            ),
                            Text('Party',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff283e66)))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Nearby_location_Party()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: size.height / 5,
                      child: SvgPicture.asset('assets/images/svg/undraw_Street_food_re_uwex.svg')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
