import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Search_page.dart';
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
        title: Text('Nearby'),
        //Text("Food"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search_Page()),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(children: [
        SvgPicture.asset(
          'assets/images/svg/undraw_breakfast_psiw.svg',
          alignment: Alignment(3, 3.5),
        ),
        ListView(
            children: resturants.map((e) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: size.width,
              height: size.height / 7,
              child: resturantCard(e),
            ),
          );
        }).toList()),
      ]),
    );
  }

  Widget resturantCard(Resturant resturant) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => Resturant_Details(resturant)));
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: 'avatarLogo${resturant.id}',
                  child: CircleAvatar(
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
