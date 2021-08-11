import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/Screens/components/components/Map_Location.dart';
import 'package:graduation_project/Screens/components/offers.dart';
import 'package:graduation_project/Screens/components/pages/Cafe__Page/Search_Page_Cafe.dart';

import '../../Error_Dev.dart';
import 'Location.dart';
import 'Nearby_Location.dart';
import 'Search_page.dart';

class Category_Buttons extends StatelessWidget {
  const Category_Buttons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
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
        title: Text('Food'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map_Location()),
                );
              },
              icon: Icon(Icons.location_pin))
        ],
        //Text("Food"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height/4,
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
                            Icons.location_searching,
                            size: 50,
                            color: Color(0xff283e66),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                          ),
                          Text('Location',
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
                              builder: (context) => Nearby_location()),
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
                            Icons.star_border,
                            size: 50,
                            color: Color(0xff283e66),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                          ),
                          Text('Offers',
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
                              builder: (context) => Offers()),
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
            SizedBox(height: 30,),
            Row(
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
                          Icons.thumb_up,
                          size: 50,
                          color: Color(0xff283e66),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                        ),
                        Text('Recommend',
                            style: TextStyle(
                                fontSize: 16,
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
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: size.height / 4,
                    child: SvgPicture.asset('assets/images/svg/undraw_eating_together_tjhx.svg')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
