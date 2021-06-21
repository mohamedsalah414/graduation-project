// import 'package:flutter/material.dart';
//
// class Add_Review extends StatefulWidget {
//   // const Add_Review({Key? key}) : super(key: key);
//
//   @override
//   _Add_ReviewState createState() => _Add_ReviewState();
// }
//
// class _Add_ReviewState extends State<Add_Review> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff283e66),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(
//               context,
//             );
//           },
//         ),
//         centerTitle: true,
//         title: Text('Comment'),
//       ),
//       body: Form(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 120,
//             ),
//             TextField(
//               maxLength: 210,
//               //maxLines: 5,
//               decoration: const InputDecoration(
//                 icon: Icon(Icons.comment),
//                 hintText: 'Enter Comment',
//                 labelText: 'Comment',
//               ),
//               // onSaved: (String value) {
//               //   // This optional block of code can be used to run
//               //   // code when the user saves the form.
//               // },
//               // validator: (value) {
//               //   if (value.isEmpty) {
//               //     return 'Please enter some text';
//               //   }
//               //   return value.contains('@')
//               //       ? 'Do not use the @ char.'
//               //       : null;
//               // },
//             ),
//             ElevatedButton(
//               child: Icon(Icons.add),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Color(0xff283e66)),
//                 // foregroundColor: MaterialStateProperty.all(Colors.blue)
//               ),
//               onPressed: () {},
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class TextFieldAlertDialog extends StatelessWidget {
//   TextEditingController _textFieldController = TextEditingController();
//
//   _displayDialog(BuildContext context) async {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('What is your Lucky Number'),
//             content: TextField(
//               controller: _textFieldController,
//               textInputAction: TextInputAction.go,
//               keyboardType: TextInputType.numberWithOptions(),
//               decoration: InputDecoration(hintText: "Enter your number"),
//             ),
//             actions: <Widget>[
//               new FlatButton(
//                 child: new Text('Submit'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               )
//             ],
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Center(
//         child: RaisedButton(
//           child: Text('Write your Number',style: TextStyle(color: Colors.white),),
//           color: Colors.pink,
//           onPressed: () => _displayDialog(context),
//         ),
//       ),
//     );
//   }
// }