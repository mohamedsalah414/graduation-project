import 'package:flutter/material.dart';

import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/cinema.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';
import 'package:graduation_project/Screens/components/pages/Party__Page/models/menu.dart';
import 'package:graduation_project/Screens/components/pages/Party__Page/models/party.dart';

class BookingPage_party extends StatelessWidget {
  ListParty listparty;
  Party party;

  BookingPage_party(this.listparty);
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  listparty.name,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                ),
                Text(
                  listparty.genre,
                  style: TextStyle(
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff283e66)),
                ),
                SizedBox(
                  height: 66,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        'Profile Name',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Mobile Phone Number',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      Text(
                        'DD/MM/YYYY',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '9:00',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                    ],
                  ),
                ),
                //Request(),
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '150LE.',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff283e66)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        elevation: 3,
        color: Color(0xff283e66),
        child: Text(
          'Request',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {});
  }
}
