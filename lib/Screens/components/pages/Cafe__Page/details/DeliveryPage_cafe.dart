import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/components/models/menu.dart';
import 'package:graduation_project/Screens/components/components/models/resturants.dart';
import 'package:graduation_project/Screens/components/pages/Cafe__Page/models/cafe.dart';

class DeliveryPage_cafe extends StatelessWidget {
  menuMAC menuMac;
  Cafe cafe;

  DeliveryPage_cafe(this.cafe);
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
          title: Text('Delivery')
          //Text("Food"),

          ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                cafe.name,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
              ),
              Text(
                cafe.speciality,
                style: TextStyle(
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff283e66)),
              ),
              SizedBox(
                height: 23,
              ),
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
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: size.width - 150,
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Color(0xff283e66),
                    hintText: 'Address',
                    labelText: 'Address',
                  ),
                ),
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
                'Your Order',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 7,
              ),
              BuildDropDown(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //GenreFood(),
                   Genre_Button(),
                   SizedBox(
                    width: 15,
                  ),
                   Genre_Button(),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Combo',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fries',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  BuildDropDown(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Drink',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  BuildDropDown(),

                ],
              ),
              SizedBox(
                height: 50,
              ),
              Request(),
            ],
          ),
        ),
      ),
    );
  }
}


// enum SingingCharacter { lafayette, jefferson }
//
// class GenreFood extends StatefulWidget {
//   GenreFood({Key key}) : super(key: key);
//   @override
//   _GenreFoodState createState() => _GenreFoodState();
// }
//
// class _GenreFoodState extends State<GenreFood> {
//   SingingCharacter _character = SingingCharacter.lafayette;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         RadioListTile<SingingCharacter>(
//           title: const Text('Lafayette'),
//           value: SingingCharacter.lafayette,
//           groupValue: _character,
//           onChanged: (SingingCharacter value) {
//             setState(() {
//               _character = value;
//             });
//           },
//         ),
//         RadioListTile<SingingCharacter>(
//           title: const Text('Thomas Jefferson'),
//           value: SingingCharacter.jefferson,
//           groupValue: _character,
//           onChanged: (SingingCharacter value) {
//             setState(() {
//               _character = value;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
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
            DropdownMenuItem(
              child: Text('one'),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text('Second Item'),
              value: 2,
            ),
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
          style: TextStyle(fontSize: 22, color: _hasBeenPressed ? Colors.white : Color(0xff283e66),)),
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
