import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/Error_Dev.dart';
import 'Food_page.dart';

// ignore: camel_case_types
class Home_Category extends StatefulWidget {
  @override
  _Home_CategoryState createState() => _Home_CategoryState();
}

// ignore: camel_case_types
class _Home_CategoryState extends State<Home_Category> {
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
              SizedBox(
                width: 200,
                height: 200,
                child: Hero(
                    tag: 'logo', child: Image.asset('assets/images/logo.png')),
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
                                builder: (context) => Err_Dev()),
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
                                builder: (context) => GooglrNAV()),
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
                                builder: (context) => Err_Dev()),
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
                                builder: (context) => Err_Dev()),
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
                      child: Image.asset('assets/images/13067.png'),
                      height: size.height / 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
