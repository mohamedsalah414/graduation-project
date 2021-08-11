import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  //const ReviewPage_Cinema({Key? key}) : super(key: key);
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('offers').snapshots();
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
          title: Text('Offers')
          //Text("Food"),

          ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('offers').snapshots(),
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
                        title: Text(data['name']),
                        trailing: Text(data['offer']),
                      ),
                    );
                  }).toList(),
                );
            }
          }),
    );
  }
}

class Offers_cafe extends StatefulWidget {
  //const ReviewPage_Cinema({Key? key}) : super(key: key);
  @override
  _Offers_cafeState createState() => _Offers_cafeState();
}

class _Offers_cafeState extends State<Offers_cafe> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
    FirebaseFirestore.instance.collection('offerscafe').snapshots();
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
          title: Text('Offers')
        //Text("Food"),

      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('offerscafe').snapshots(),
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
                        title: Text(data['name']),
                        trailing: Text(data['offer']),
                      ),
                    );
                  }).toList(),
                );
            }
          }),
    );
  }
}
