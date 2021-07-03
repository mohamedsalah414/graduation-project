import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduation_project/Screens/components/Home_category.dart';
import 'package:graduation_project/Screens/home/components/Create_Acc.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:splashscreen/splashscreen.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void initState() {
    super.initState();
  }
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();

    _passwordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  child: Hero(
                      tag: 'logo',
                      child: Image.asset('assets/images/logo.png')),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          // icon: Icon(Icons.person),
                          hintText: 'Enter Email',
                          labelText: 'Email',
                        ),
                        controller: _emailcontroller,
                        onSaved: (String value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (value) =>
                            value.isEmpty || !value.contains('@')
                                ? 'enter a valid email'
                                : null,

                        // {
                        //
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return !value.contains('@')
                        //       ? 'Do not use the @ char.'
                        //       : null;
                        // },
                      ),
                      TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        controller: _passwordcontroller,
                        decoration: const InputDecoration(
                          // icon: Icon(Icons.person),
                          hintText: 'Enter Password',
                          labelText: 'Password',
                        ),
                        onSaved: (String value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required  ';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff283e66)),
                          ),
                          onPressed: () async {
                            // Validate returns true if the form is valid, or false
                            // otherwise.
                            // if (_formKey.currentState.validate()) {
                            // If the form is valid, display a Snackbar.
                            // }
                            if (_formkey.currentState.validate()) {
                              var result = await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _emailcontroller.text,
                                      password: _passwordcontroller.text);
                              if (result != null) {
                                // pushReplacement
                                //print(result);
                                await Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home_Category()),
                                );
                              } else {
                                print('user not found');
                              }
                            }
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Home_Category()),
                            // );
                          },
                          child: Text('Submit'),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Forgotten Account?",
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                        height: 10,
                        thickness: 1,
                        indent: 0,
                        endIndent: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          child: RaisedButton(
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Create_Acc()),
                              );
                            },
                            color: Color(0xff6BB7BF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
