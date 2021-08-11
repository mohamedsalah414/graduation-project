import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/Screens/home/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


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

  final TextEditingController _namecontroller = TextEditingController();

  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  final TextEditingController _countrycontroller = TextEditingController();

  final TextEditingController _mobilecontroller = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();

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
