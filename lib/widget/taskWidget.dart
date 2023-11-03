
// import 'package:flutter/material.dart';

// class taskWidget extends StatelessWidget {
//   const taskWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
        
//       },
//       child: AnimatedContainer(
//           margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey.withOpacity(0.1),
//                     offset: const Offset(0, 4),
//                     blurRadius: 10)
//               ],
//               borderRadius: BorderRadius.circular(10),
//               color: Color.fromARGB(255, 140, 112, 145)),
//           duration: const Duration(microseconds: 600),
//           child: ListTile(
//             leading: GestureDetector(
//               onTap: () {},
//               child: AnimatedContainer(
//                   decoration: BoxDecoration(
//                       color: Colors.grey,
//                       shape: BoxShape.circle,
//                       border:
//                           Border.all(color: Colors.grey, width: 2)),
//                   child: Icon(Icons.check),
//                   width: 25,
//                   duration: Duration(milliseconds: 600)),
//             ),
//             title: Padding(
//               padding: const EdgeInsets.only(top: 3, bottom: 5),
//               child: Text(
//                 'Done',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             subtitle: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Description',
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 10,bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Date',style: TextStyle(color: Colors.grey,fontSize: 12),
//                         ),
//                         Text('SubDate',style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey
//                         ),)
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )),
//     );
//   }
// }
