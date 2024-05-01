// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
//                   padding: const EdgeInsets.all(20.0),
//                   child: SizedBox(
//                     height: 100,
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                           // child: Text("Z",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
//                           // backgroundColor: Colors.grey,
//                           radius: 40,
//                           backgroundImage: AssetImage("assets/Images/circle_avatar.jpg"),
                          
//                         ),
//                         SizedBox(width: 20,),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Afsar Hossen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
//                             Text("imshuvo97@gmail.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                            
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }