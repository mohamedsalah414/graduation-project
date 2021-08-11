import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/components/loca.dart';
import 'package:graduation_project/Screens/components/pages/Food__page/models/menu.dart';
import 'package:graduation_project/Screens/components/pages/Food__page/models/resturants.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';

class BookingPage extends StatefulWidget {
  Resturant resturant;

  BookingPage(this.resturant);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  menuMAC menuMac;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    DateTime currentDate = DateTime.now();
    Future<void> _selectDate(BuildContext context) async {

      final DateTime pickedDate = await showDatePicker(
          context: context,
          initialDate: currentDate,
          firstDate: DateTime(2020),
          lastDate: DateTime(2023));
      if (pickedDate != null && pickedDate != currentDate) {
        setState(() {
          currentDate = pickedDate;
          print('$currentDate');
        });
      }
    }
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.resturant.name,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                ),
                Text(
                  widget.resturant.speciality,
                  style: TextStyle(
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff283e66)),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                    FirebaseAuth.instance.currentUser.email,
                  style: TextStyle(
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff283e66)),
                ),
                // Text(
                // Location.instance.getLocation().toString(),
                //   style: TextStyle(
                //       fontSize: 19,
                //       fontStyle: FontStyle.italic,
                //       color: Color(0xff283e66)),
                // ),
                SizedBox(
                  height: 15,
                ),
                IconButton(
                    padding: EdgeInsets.all(15),
                    iconSize: 35,
                    icon: Icon(
                      Icons.my_location_outlined,
                    ),
                    splashRadius: 25,
                    onPressed: () {}),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Branch',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 7,
                ),
                // ElevatedButton(onPressed:(){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MyLocation()),
                //   );
                // }, child: Text('press')),
                BuildDropDown(),
              RaisedButton(
                onPressed: () {_selectDate(context);
                  //print('$currentDate');


                }  ,
                child: Text('Select date'),
              ),
               // pick(),
                SizedBox(
                  height: 15,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     //GenreFood(),
                //     Genre_Button(),
                //     SizedBox(
                //       width: 15,
                //     ),
                //     Genre_Button(),
                //     SizedBox(
                //       width: 15,
                //     ),
                //     Genre_Button(),
                //   ],
                // ),
                SizedBox(
                  height: 100,
                ),
                Request(),
                // Text('$currentDate'),
                // Text('${currentDate.day}'+'/ ${currentDate.month}'),
                // Text('${currentDate.hour}'+': ${currentDate.minute}'),
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
          // items:
          // menuMAC.entries.map((value) {
          //   return DropdownMenuItem(
          //     value: value,
          //     child: new Text(value),
          //   );
          // }).toList(),
          // [
          //   DropdownMenuItem(
          //     child: Text('one'),
          //     value: 1,
          //   ),
          //   DropdownMenuItem(
          //     child: Text('Second Item'),
          //     value: 2,
          //   ),
          //   DropdownMenuItem(child: Text('Third Item'), value: 3),
          //   DropdownMenuItem(child: Text('Fourth Item'), value: 4)
          // ],
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
        child: Text('Request', style: TextStyle(color: Colors.white,fontSize: 23),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {});
  }
}
class pick extends StatefulWidget {
  @override
  _pickState createState() => _pickState();
}
class _pickState extends State<pick> {
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2023));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
        return('$currentDate');
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return
            RaisedButton(
              onPressed: () {_selectDate(context);
              //print('$currentDate');

              }  ,
              child: Text('Select date'),
            );
        }}