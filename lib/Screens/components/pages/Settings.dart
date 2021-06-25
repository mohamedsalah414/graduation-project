import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home/login.dart';

class Setting extends StatelessWidget {
  // const Setting({Key? key}) : super(key: key);

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
        title: Text('Settings'),

        //Text("Food"),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('Log Out'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Login()),
            );
          },
        ),
      ),
    );
  }
}
