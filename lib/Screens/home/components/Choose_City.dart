
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/home/login.dart';
class Choose_City extends StatefulWidget {
  const Choose_City({Key key}) : super(key: key);

  @override
  _Choose_CityState createState() => _Choose_CityState();
}

class _Choose_CityState extends State<Choose_City> {
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
                    child: Column(
                      children: [
                        TextFormField(
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
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              // if (_formKey.currentState.validate()) {
                              // If the form is valid, display a Snackbar.
                              // }
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
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
