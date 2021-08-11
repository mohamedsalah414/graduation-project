import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home/login.dart';
import 'Error_Dev.dart';

class ProfileScreen extends StatelessWidget {
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
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70.0,
              ),
              CircleAvatar(
                radius: 65.0,
                backgroundImage: AssetImage('assets/images/propic.png'),
              ),
              SizedBox(
                height: 20.0,
              ),

              Text(
                FirebaseAuth.instance.currentUser.email,
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 22),
              ),
              SizedBox(
                height: 300.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff283e66),
                  // background
                ),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  await Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
