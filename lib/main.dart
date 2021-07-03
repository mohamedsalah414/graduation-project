import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/home/Splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),

      theme: ThemeData(primaryColor: Color(0xff283e66),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }