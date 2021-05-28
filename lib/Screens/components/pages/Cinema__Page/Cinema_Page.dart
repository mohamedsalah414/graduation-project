import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Category_Buttons_Cinema.dart';
import 'Search_Page_Cinema.dart';

class GooglrNAV_Cinema extends StatefulWidget {
  @override
  _GooglrNAV_CinemaState createState() => _GooglrNAV_CinemaState();
}

class  _GooglrNAV_CinemaState  extends State<GooglrNAV_Cinema> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Category_Buttons_Cinema(), //Home-Navpar
    Search_Page_Cinema(), //Search-Navpar
    Text(
      'Favourite list is Empty\n'
          'Back-End',

      style: optionStyle,
      textAlign: TextAlign.center,
    ), //Favourite-Navpar
    Text(
      'Index 3: Profile\n'
          'Back-End',
      style: optionStyle,
      textAlign: TextAlign.center,
    ) //Profile-Navpar
  ];

  @override
  Widget build(BuildContext context) {
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
          title: Text("Food")
        //Text("Food"),

      ),

      // body: Category_Buttons(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: buildGNAV(),
    );
  }

  Container buildGNAV() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 20, color: Color(0xff283e66).withOpacity(.1))
      ]),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              duration: Duration(milliseconds: 800),
              tabBackgroundColor: Color(0xff283e66),
              tabs: [
                GButton(
                  iconColor: Color(0xff283e66),
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  iconColor: Color(0xff283e66),
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  iconColor: Color(0xff283e66),
                  icon: Icons.bookmark_rounded,
                  text: 'Favourite',
                ),
                GButton(
                  iconColor: Color(0xff283e66),
                  icon: Icons.person,
                  text: 'Profile',
                ),

              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ),
      ),
    );
  }
}


