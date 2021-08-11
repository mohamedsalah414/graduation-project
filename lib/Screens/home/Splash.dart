import 'package:flutter/material.dart';
import 'login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        //title: 'App',
        home: AnimatedSplashScreen(
            splashIconSize: 2000,
            duration: 1000,
            splash: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Hero(
                  tag: 'logo', child: Image.asset('assets/images/logo.png')),
            ),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.white));
  }
}

// SplashScreen(
//
// seconds: 1,
// navigateAfterSeconds:_createRoute() ,
// useLoader: false,
// imageBackground: AssetImage("assets/images/Welcome – 4.png"),
// // image: Image.asset("assets/images/Welcome – 4.png"),
//
// backgroundColor: Colors.white,
// photoSize: 250,
// //pageRoute: _createRoute(),
// );
// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Login(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;
//
//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
