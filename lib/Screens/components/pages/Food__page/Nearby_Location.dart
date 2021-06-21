import 'package:flutter/material.dart';

import 'details/resturant_details.dart';
import 'models/resturants.dart';

// ignore: camel_case_types
class Nearby_location extends StatefulWidget {
  @override
  _Nearby_locationState createState() => _Nearby_locationState();
}

// ignore: camel_case_types
class _Nearby_locationState extends State<Nearby_location> {
  int _selectedItem = 0;
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
          title: Text('Nearby')
          //Text("Food"),

          ),
      backgroundColor: Colors.white,
      body: ListView(
          children: resturants.map((e) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width: size.width,
            height: size.height / 7,
            // color: Colors.blue,
            child: resturantCard(e),
          ),
        );
      }).toList()),
    );
  }
  Widget resturantCard(Resturant resturant) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Resturant_Details(resturant)));
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          children: [
            // Image.asset('assets/images/1.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: 'avatarLogo${resturant.id}',
                  child: CircleAvatar(
                    // child: Image.asset('assets/images/1.jpg'),
                    backgroundColor: Colors.white,

                    backgroundImage: AssetImage(resturant.urlPhoto),
                    radius: 40,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      resturant.name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffd500),
                    ),
                    Text(
                      resturant.rating.toString(),
                      style: TextStyle(fontSize: 16, color: Color(0x770000000)),
                    )
                  ],
                ),
                Text(
                  resturant.speciality,
                  style: TextStyle(
                      color: Color(0xff283e66),
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
                Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      resturant.address,
                      style: TextStyle(fontSize: 16, color: Color(0xff283e66)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
