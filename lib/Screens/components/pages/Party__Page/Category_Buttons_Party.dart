import 'package:flutter/material.dart';

import '../../Error_Dev.dart';
import 'Location_Page_Party.dart';


class Category_Buttons_Party extends StatelessWidget {
  const Category_Buttons_Party({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height/4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 127,
                  height: 132,
                  child: RaisedButton(
                    elevation: 13,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_searching,
                          size: 50,
                          color: Color(0xff283e66),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                        ),
                        Text('Location',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff283e66)))
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Location_Page_Party()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 127,
                  height: 132,
                  child: RaisedButton(
                    elevation: 13,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 50,
                          color: Color(0xff283e66),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                        ),
                        Text('Offers',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff283e66)))
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Err_Dev()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 60,
          // ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: 127,
                height: 132,
                child: RaisedButton(
                  elevation: 13,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up,
                        size: 50,
                        color: Color(0xff283e66),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                      ),
                      Text('Recommend',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff283e66)))
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Err_Dev()),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
