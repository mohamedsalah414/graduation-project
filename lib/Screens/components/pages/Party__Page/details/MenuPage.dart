import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Party__Page/details/BookingPage_party.dart';
import 'package:graduation_project/Screens/components/pages/Party__Page/models/menu.dart';



class MenuPage_Party extends StatefulWidget {
  @override
  _MenuPage_PartyState createState() => _MenuPage_PartyState();
}

class _MenuPage_PartyState extends State<MenuPage_Party> {
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
          children: listParty.map((e) {
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

  Widget menuCard(ListParty listParty) {
    return GestureDetector(

      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => BookingPage_party(listParty)));
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
                  tag: 'avatarLogo${listParty.id}',
                  child: CircleAvatar(
                    // child: Image.asset('assets/images/1.jpg'),
                    backgroundColor: Colors.white,

                    backgroundImage: AssetImage(listParty.urlPhoto),
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
                  listParty.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Text(
                  listParty.genre,
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
