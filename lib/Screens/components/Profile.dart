import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/pages/Settings.dart';

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
        //Text("Food"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.0,
            ),
            CircleAvatar(
              radius: 65.0,
              backgroundImage: AssetImage('assets/images/Menu/propic.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UserName',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            Text(
              'Email',
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 22),
            ),
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Err_Dev()),
                      );
                    },
                    label: Text(
                      'My Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 35,
                    ),
                    style: TextButton.styleFrom(primary: Colors.orange),                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Err_Dev()),
                      );
                    },
                    label: Text(
                      'My Reviews',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    icon: Icon(
                      Icons.star_half,
                      size: 35,
                    ),
                    style: TextButton.styleFrom(primary: Colors.orange),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Err_Dev()),
                        );
                      },
                      label: Text('Invite a friend'),
                      icon: Icon(
                        Icons.share,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Err_Dev()),
                        );
                      },
                      label: Text('Help & Support'),
                      icon: Icon(
                        Icons.help_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
