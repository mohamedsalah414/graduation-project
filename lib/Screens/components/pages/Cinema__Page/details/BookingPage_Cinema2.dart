import 'package:flutter/material.dart';

import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/cinema.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/details/MenuPage.dart';

class BookingPage_Cinema2 extends StatelessWidget {
  ListCinema listcinema;
  Cinema cinema;

  BookingPage_Cinema2(this.listcinema);
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
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
          title: Text('Booking')
          //Text("Food"),

          ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  listcinema.name,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DD/MM/YYYY',
                            style: TextStyle(
                                fontSize: 19,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff283e66)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            '3:00',
                            style: TextStyle(
                                fontSize: 19,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff283e66)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'A3',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff283e66)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '50LE.',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff283e66)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                RaisedButton(
                    elevation: 3,
                    color: Color(0xff283e66),
                    child: Text(
                      'Accept',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuPage_Cinema()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
