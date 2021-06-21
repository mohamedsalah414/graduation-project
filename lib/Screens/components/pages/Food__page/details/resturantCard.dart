
import 'package:flutter/material.dart';


// Widget resturantCard(Resturant resturant) {
//   return GestureDetector(
//     onTap: () {
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (_) => Resturant_Details(resturant)));
//     },
//     child: Card(
//       elevation: 5,
//       shadowColor: Colors.grey.shade50,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(7),
//       ),
//       child: Row(
//         children: [
//           // Image.asset('assets/images/1.jpg'),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Hero(
//                 tag: 'avatarLogo',
//                 child: CircleAvatar(
//                   // child: Image.asset('assets/images/1.jpg'),
//                   backgroundImage: AssetImage(resturant.urlPhoto),
//                   radius: 40,
//                 ),
//               ),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     resturant.name,
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Color(0xffffd500),
//                   ),
//                   Text(
//                     resturant.rating.toString(),
//                     style: TextStyle(fontSize: 16, color: Color(0x770000000)),
//                   )
//                 ],
//               ),
//               Text(
//                 resturant.speciality,
//                 style: TextStyle(
//                     color: Color(0xff283e66),
//                     fontSize: 18,
//                     fontStyle: FontStyle.italic),
//               ),
//               Row(
//                 children: [
//                   Icon(Icons.add_location),
//                   Text(
//                     resturant.address,
//                     style: TextStyle(fontSize: 16, color: Color(0xff283e66)),
//                   )
//                 ],
//               )
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }