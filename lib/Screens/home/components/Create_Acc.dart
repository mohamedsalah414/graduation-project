import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/components/Home_category.dart';
import 'package:graduation_project/Screens/home/components/Choose_City.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/Screens/home/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Create_Acc extends StatefulWidget {
  const Create_Acc({Key key}) : super(key: key);

  @override
  _Create_AccState createState() => _Create_AccState();
}

class _Create_AccState extends State<Create_Acc> {
  void initState() {
    super.initState();
  }

  final _formkey = GlobalKey<FormState>();

  TextEditingController _namecontroller = TextEditingController();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  TextEditingController _countrycontroller = TextEditingController();

  TextEditingController _mobilecontroller = TextEditingController();
  TextEditingController _agecontroller = TextEditingController();

  @override
  void dispose() {
    _namecontroller.dispose();

    _emailcontroller.dispose();

    _passwordcontroller.dispose();

    _countrycontroller.dispose();

    _agecontroller.dispose();

    _mobilecontroller.dispose();

    super.dispose();
  }

  var currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
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
          title: Text('Create Account')
          //Text("Food"),

          ),
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
                Center(
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ),
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _namecontroller,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person_pin_outlined),
                            // icon: Icon(Icons.person),
                            hintText: 'Enter Your Name',
                            labelText: 'Text',
                          ),
                          onSaved: (String value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        TextFormField(
                          controller: _emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.mail),
                            // icon: Icon(Icons.person),
                            hintText: 'Enter Email',
                            labelText: 'Email',
                          ),
                          onSaved: (String value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (value) =>
                              value.isEmpty || !value.contains('@')
                                  ? 'enter a valid email'
                                  : null,
                        ),
                        TextFormField(
                          controller: _mobilecontroller,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.phone_android),
                            // icon: Icon(Icons.person),
                            hintText: 'Enter Mobile Number',
                            labelText: 'Mobile Number',
                          ),
                          onSaved: (String value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        TextFormField(
                          controller: _agecontroller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_today_rounded),
                            // icon: Icon(Icons.person),
                            hintText: 'Enter Your Age',
                            labelText: 'Age',
                          ),
                          onSaved: (String value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        TextFormField(
                          controller: _passwordcontroller,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.password),
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
                              return 'Please enter some text';
                            }
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
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
                              if (_formkey.currentState.validate()) {
                                var result = await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: _emailcontroller.text,
                                        password: _passwordcontroller.text);
                                if (result != null) {
                                  var userInfo = FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(result.user.uid)
                                      .set({
                                    'name': _namecontroller.text,
                                    'age': _agecontroller.text,
                                    'mobile': _mobilecontroller.text,
                                  });

                                  await Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                }
                              }
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => Choose_City()),
                              // );
                            },
                            child: Text('Create Account'),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  // key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          // icon: Icon(Icons.person),
                          hintText: 'Enter Email',
                          labelText: 'Email',
                        ),
                        onSaved: (String value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return value.contains('@')
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                      TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
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
                          onPressed: () {
                            // Validate returns true if the form is valid, or false
                            // otherwise.
                            // if (_formKey.currentState.validate()) {
                            // If the form is valid, display a Snackbar.
                            // }
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home_Category()),
                            );
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
                            onPressed: () {},
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
}*/
