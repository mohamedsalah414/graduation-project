import 'package:flutter/material.dart';

class Err_Dev extends StatelessWidget {
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
          title: Text("Error")
          //Text("Food"),

          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:130.0,bottom: 35.0),
            child: Center(
              child: Column(
                children: [

                  Text(
                    "UNDER",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff283e66),

                    ),
                  ),
                  Text(
                    " DEVELOPMENT",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff283e66),
                      //decorationThickness: 150.0,
                    ),

                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Image.asset("assets/images/2647838.png"),
          ),
        ],
      ),
    );
  }
}
