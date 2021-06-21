import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Cinema__Page/models/reviews.dart';

import 'add_review.dart';

class ReviewPage_Cafe extends StatelessWidget {
  //const ReviewPage_Cinema({Key? key}) : super(key: key);
  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Write Your review'),
            content: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(hintText: 'Enter your comment'),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
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
          title: Text('Reviews')
        //Text("Food"),

      ),
      body: ListView(
          children: review.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                height: size.height / 7,
                // color: Colors.blue,
                child: menuCard(e),
              ),
            );
          }).toList()
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff283e66),
        onPressed: ()=>_displayDialog(context),
        // {
        //   //TextFieldAlertDialog();
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => TextFieldAlertDialog()),
        //   );
        // }
      ),
    );
  }
  Widget menuCard(ListCinema_reviews reviews) {
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

                  backgroundImage: AssetImage(reviews.picprofile),
                  radius: 40,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reviews.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Text(
                  reviews.comment,
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
              reviews.date,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }

}
