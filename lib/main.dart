// import 'package:flutter/material.dart';
// import 'package:grocery_app_10/cart_screen.dart';
// import 'package:grocery_app_10/explore_page.dart';
// import 'package:grocery_app_10/favorite_list.dart';
// import 'package:grocery_app_10/home_screen.dart';
// import 'package:grocery_app_10/main.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:grocery_app_10/onboard_page.dart';
import 'package:grocery_app_10/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
















// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List widgetList = [
//     HomeScreen(),
//     ExplorePage(),
//     CartScreen(),
//     FavoriteList(),
//   ];
//   int myIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           scaffoldBackgroundColor: Colors.white,
//         ),
//         home: Scaffold(
//           body: Center(
//             child: widgetList[myIndex],
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             onTap: (index) {
//               setState(() {
//                 myIndex = index;
//               });
//             },
//             currentIndex: myIndex,
//             selectedItemColor: Color(0xFF53B175),
//             unselectedItemColor: Colors.black,
//            items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
//              BottomNavigationBarItem(icon: Icon(Icons.manage_search_rounded),label: "Explore"),
//              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Cart"),
//              BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded),label: "Favorites"),
//              //BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
//            ]
//           ),
//         ),
//       );
// // Scaffold(
// //   
// // );
//   }
// }