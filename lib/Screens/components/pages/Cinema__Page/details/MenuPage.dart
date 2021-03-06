import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/details/BookingPage_cinema1.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';

import 'BookingPage_cinema.dart';


class MenuPage_Cinema extends StatefulWidget {
  @override
  _MenuPage_CinemaState createState() => _MenuPage_CinemaState();
}

class _MenuPage_CinemaState extends State<MenuPage_Cinema> {
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
          title: Text('Menu')
          //Text("Food"),

          ),
      body: ListView(
          children: menuMACs.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width,
            height: size.height / 7,
            // color: Colors.blue,
            child: menuCard(e),
          ),
        );
      }).toList()),
    );
  }

  Widget menuCard(ListCinema listcinema) {
    return GestureDetector(

      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => BookingPage_Cinema1(listcinema)));
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
                  tag: 'avatarLogo${listcinema.id}',
                  child: CircleAvatar(
                    // child: Image.asset('assets/images/1.jpg'),
                    backgroundColor: Colors.white,

                    backgroundImage: AssetImage(listcinema.urlPhoto),
                    radius: 40,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listcinema.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Text(
                  listcinema.genre,
                  style: TextStyle(
                      color: Color(0xff283e66),
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              width: 45,
            ),
            // Text(
            //   '${menuMac.price.toString()} LE',
            //   style: TextStyle(
            //       fontSize: 25,
            //       color: Color(0xff283e66),
            //       fontWeight: FontWeight.w700),
            // )
          ],
        ),
      ),
    );
  }
}
