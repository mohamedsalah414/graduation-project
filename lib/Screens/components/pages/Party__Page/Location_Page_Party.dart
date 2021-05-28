import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/components/Map_Location.dart';

import 'Nearby_location_Party.dart';



// ignore: camel_case_types
class Location_Page_Party extends StatelessWidget {
  const Location_Page_Party({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          title: Text('Location')
        //Text("Food"),

      ),
      body: Padding(
        padding: const EdgeInsets.only( left: 140.0),
        child: Column(
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
                      Icons.near_me,
                      size: 50,
                      color: Color(0xff283e66),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                    ),
                    Text('Nearby',
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
                    MaterialPageRoute(builder: (context) => Nearby_location_Party()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
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
                      Icons.my_location,
                      size: 50,
                      color: Color(0xff283e66),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                    ),
                    Text('Map',
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
                    MaterialPageRoute(builder: (context) => Map_Location()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
