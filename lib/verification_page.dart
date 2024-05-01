// import 'package:flutter/material.dart';
// import 'package:grocery_app_10/login_page.dart';
// //import 'package:pinput/pinput.dart';

// class VerificationPage extends StatefulWidget {
//   const VerificationPage({super.key});

//   @override
//   State<VerificationPage> createState() => _VerificationPageState();
// }

// class _VerificationPageState extends State<VerificationPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         margin: const EdgeInsets.only(top: 130),
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Enter your 6-digit code",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30,),
//             TextFormField(
//               decoration: InputDecoration(
//                     labelText: "Code",
//                     contentPadding: const EdgeInsets.all(8),
//                     border: UnderlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                       borderSide: const BorderSide(width: 5,style: BorderStyle.solid)
//                     )
//                   ),
//             ),
//              const SizedBox(height: 15,),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: [
//                  //TextButton(onPressed: (){}, child: const Text("Resend Code",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 85, 206, 147),fontWeight: FontWeight.w500),)),
//                  const Spacer(),
//                  TextButton(onPressed: (){
//                   Navigator.pop(context);
//                  }, child: const Text("Edit Phone Number ?",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 16),))
//                ],
//              ),
        
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
//       },shape: const OvalBorder(),backgroundColor: const Color.fromARGB(255, 30, 195, 115),child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
//     );
//   }
// }





// // Pinput(
//             //      length: 6,
//             //     validator: (s) {
//             //     return s == '123456' ? null : 'Pin is incorrect';
//             //    },
//             //    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
//             //    showCursor: true,
//             //    // ignore: avoid_print
//             //    onCompleted: (pin) => print(pin),
//             //    ),