import 'package:flutter/material.dart';

import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/cinema.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';

import 'BookingPage_cinema.dart';

class BookingPage_Cinema1 extends StatelessWidget {
  ListCinema listcinema;
  Cinema cinema;

  BookingPage_Cinema1(this.listcinema);
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: 'avatarLogo${listcinema.id}',
                      child: Container(
                        child: SizedBox(
                          width: 280,
                          height: 200,
                          //backgroundColor: Colors.white,
                          // child: Image.asset('assets/images/1.jpg'),
                          child: Image.asset(
                            listcinema.urlPhoto,
                            width: 280,
                          ),
                          //radius: 80,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  listcinema.name,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                ),
                Text(
                  listcinema.genre,
                  style: TextStyle(
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff283e66)),
                ),
                SizedBox(
                  height: 23,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Branch',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      BuildDropDown(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Branch',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      BuildDropDown(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Request(listcinema),
                RaisedButton(
                    elevation: 3,
                    color: Color(0xff283e66),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BookingPage_Cinema(listcinema)),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildDropDown extends StatefulWidget {
  @override
  _BuildDropDownState createState() => _BuildDropDownState();
}

class _BuildDropDownState extends State<BuildDropDown> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: DropdownButton(
          isExpanded: true,
          // list form medium
          elevation: 15,
          value: _value,
          items: [
            DropdownMenuItem(child: Text('one'), value: 1),
            DropdownMenuItem(child: Text('Second Item'), value: 2),
            DropdownMenuItem(child: Text('Third Item'), value: 3),
            DropdownMenuItem(child: Text('Fourth Item'), value: 4)
          ],
          onChanged: (value) {
            {
              setState(() {
                _value = value;
              });
            }
            ;
          }),
    );
  }
}

class Genre_Button extends StatefulWidget {
  ListCinema listcinema;
  @override
  _Genre_ButtonState createState() => _Genre_ButtonState();
}

class _Genre_ButtonState extends State<Genre_Button> {
  // String name;
  // _Genre_ButtonState(this.name);
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 3,
      color: _hasBeenPressed ? Color(0xff283e66) : Colors.white,
      child: Text('Genere',
          style: TextStyle(
            fontSize: 22,
            color: _hasBeenPressed ? Colors.white : Color(0xff283e66),
          )),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed = !_hasBeenPressed;
        });
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => Location_Page()),
        // );
      },
    );
  }
}

// class Request extends StatefulWidget {
//   ListCinema listcinema;
//
//   Request(ListCinema listcinema);
//   @override
//   _RequestState createState() => _RequestState(this.listcinema);
// }
//
// class _RequestState extends State<Request> {
//   ListCinema listcinema;
//   _RequestState(this.listcinema);
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//         elevation: 3,
//         color: Color(0xff283e66),
//         child: Text(
//           'Next',
//           style: TextStyle(color: Colors.white, fontSize: 23),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => BookingPage_Cinema(listcinema)),
//           );
//         });
//   }
// }
