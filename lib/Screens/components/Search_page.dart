import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';

class Search_Page extends StatelessWidget {
  const Search_Page({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 5),
            child: SafeArea(
              child: TextFormField(
                autocorrect: true,
                decoration: const InputDecoration(
                  // icon: Icon(Icons.person),
                  hintText: 'Search',
                  labelText: 'Search',
                ),
                style: TextStyle(fontSize: 18),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Text(
            'Back-End',
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
