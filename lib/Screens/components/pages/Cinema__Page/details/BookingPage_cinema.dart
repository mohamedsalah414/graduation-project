import 'package:flutter/material.dart';

import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/cinema.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/menu.dart';

import 'BookingPage_Cinema2.dart';

class BookingPage_Cinema extends StatelessWidget {
  ListCinema listcinema;
  Cinema cinema;

  BookingPage_Cinema(this.listcinema);
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Profile Name',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                      Text(
                        'Mobile Phone Number',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
                      ),
                      Text(
                        'DD/MM/YYYY',
                        style: TextStyle(
                            fontSize: 19,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff283e66)),
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
                ),



                SizedBox(
                  height: 15,
                ),
                Text(
                  'seats',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '#1',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      BuildDropDown(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Add(),
                SizedBox(
                  height: 100,
                ),
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
                    MaterialPageRoute(builder: (context) => BookingPage_Cinema2(listcinema)),
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

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  // String name;
  // _Genre_ButtonState(this.name);
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 3,
      color:  Colors.white ,
      child: Text('Add',
          style: TextStyle(
            fontSize: 22,

          )),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: () {


      },
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
