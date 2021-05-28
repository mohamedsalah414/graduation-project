import 'package:flutter/material.dart';
import 'details/cafe_details.dart';
import 'models/cafe.dart';

// ignore: camel_case_types
class Nearby_location_Cafe extends StatefulWidget {
  @override
  _Nearby_location_CafeState createState() => _Nearby_location_CafeState();
}

// ignore: camel_case_types
class _Nearby_location_CafeState extends State<Nearby_location_Cafe> {
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
          children: cafe.map((e) {
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
  Widget resturantCard(Cafe cafe) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Cafe_Details(cafe)));
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
                  tag: 'avatarLogo${cafe.id}',
                  child: CircleAvatar(
                    // child: Image.asset('assets/images/1.jpg'),
                    backgroundColor: Colors.white,

                    backgroundImage: AssetImage(cafe.urlPhoto),
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
                      cafe.name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffd500),
                    ),
                    Text(
                      cafe.rating.toString(),
                      style: TextStyle(fontSize: 16, color: Color(0x770000000)),
                    )
                  ],
                ),
                Text(
                  cafe.speciality,
                  style: TextStyle(
                      color: Color(0xff283e66),
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
                Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      cafe.address,
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
