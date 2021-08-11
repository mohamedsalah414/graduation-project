import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home/login.dart';

import 'components/Map_Location.dart';
import 'components/places.dart';

class AdminPanel extends StatelessWidget {
  //const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('fooddelivery').snapshots();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff283e66),
        leading: IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            await Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        centerTitle: true,
        title: Text('admin panel'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map_Location()),
                );
              },
              icon: Icon(Icons.location_pin))
        ],
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('fooddelivery').snapshots(),
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
                        title: Text(data['useremail']),
                        trailing: Text(data['name']),
                        leading: Text(data['price']),
                        subtitle: Text(data['address']),
                      ),
                    );
                  }).toList(),
                );
            }
          }),

    );
    // )
    //);
  }
}
