import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Food__page/models/reviews.dart';
import 'package:intl/intl.dart';

class ReviewPage_Food extends StatefulWidget {
  //const ReviewPage_Cinema({Key? key}) : super(key: key);
  @override
  _ReviewPage_FoodState createState() => _ReviewPage_FoodState();
}

class _ReviewPage_FoodState extends State<ReviewPage_Food> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _textFieldController = TextEditingController();

  @override
  void dispose() {
    _textFieldController.dispose();

    super.dispose();
  }

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Write Your review'),
            content: Form(
              key: _formkey,
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    TextFormField(
                      //key: _formkey,
                      controller: _textFieldController,
                      textInputAction: TextInputAction.go,
                      keyboardType: TextInputType.multiline,
                      decoration:
                          InputDecoration(hintText: 'Enter your comment'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          child: new Text('comment'),
                          onPressed: () async {
                            var currentUser = FirebaseAuth.instance.currentUser;
                            if (_formkey.currentState.validate()) {
                              DateTime datenow = DateTime.now();
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd – kk:mm')
                                      .format(datenow);

                              var review = FirebaseFirestore.instance
                                  .collection('foodreviews')
                                  .doc()
                                  .set({
                                'comment': _textFieldController.text,
                                'date': formattedDate,
                                'user': {
                                  'user': currentUser.uid,
                                  'email': currentUser.email,
                                  // 'name':currentUser.displayName,
                                }
                              });
                            }
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('foodreviews').snapshots();
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
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('foodreviews').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (!snapshot.hasData) return Text('Loading');

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading');
            }
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Text('Loading...');
              default:
                return ListView(
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    return Card(
                      elevation: 5,
                      shadowColor: Colors.grey.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: ListTile(
                        //shape: ,
                        title: Text(data['comment']),
                        trailing: Text(data['date']),
                      ),
                    );
                  }).toList(),
                );
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff283e66),
        onPressed: () => _displayDialog(context),
      ),
    );
  }
}
