import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Cafe__Page/models/menu.dart';

class MenuPage extends StatelessWidget {
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

  Widget menuCard(menuCafe menuMac) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (_) => Resturant_Details(resturant)));
      // },
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
                child: CircleAvatar(
                  // child: Image.asset('assets/images/1.jpg'),
                  backgroundColor: Colors.white,

                  backgroundImage: AssetImage(menuMac.urlPhoto),
                  radius: 40,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuMac.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Text(
                  menuMac.genre,
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
            Text(
              '${menuMac.price.toString()} LE',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff283e66),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
