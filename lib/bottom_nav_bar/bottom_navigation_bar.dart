import 'package:flutter/material.dart';
import 'package:grocery_app_10/account_screen.dart';
import 'package:grocery_app_10/cart_screen.dart';
import 'package:grocery_app_10/explore_page.dart';
import 'package:grocery_app_10/favorite_list.dart';
import 'package:grocery_app_10/home_screen.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';
//void main() => runApp(const BottomNavBar());

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List widgetList = [
    const HomeScreen(),
    const ExplorePage(),
    const CartScreen(),
    const FavoriteList(),
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Scaffold(
          body: Center(
            child: widgetList[myIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            selectedItemColor: const Color(0xFF53B175),
            unselectedItemColor: Colors.black,
           items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.manage_search_rounded),label: "Explore"),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Cart"),
             BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded),label: "Favorites"),
             //BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: "Account"),
           ]
          ),
        ),
      );
// Scaffold(
//   
// );
  }
}

// bottomNavigationBar: CurvedNavigationBar(
  //   //letIndexChange: true,
  //   backgroundColor: Colors.blueAccent,
  //   items: [
  //     CurvedNavigationBarItem(
  //       child: Icon(Icons.home_outlined),
  //       label: 'Home',
  //     ),
  //     CurvedNavigationBarItem(
  //       child: Icon(Icons.search),
  //       label: 'Search',
  //     ),
  //     CurvedNavigationBarItem(
  //       child: Icon(Icons.chat_bubble_outline),
  //       label: 'Chat',
  //     ),
  //     CurvedNavigationBarItem(
  //       child: Icon(Icons.newspaper),
  //       label: 'Feed',
  //     ),
  //     CurvedNavigationBarItem(
  //       child: Icon(Icons.perm_identity),
  //       label: 'Personal',
  //     ),
  //   ],
  //   onTap: (index) {
  //     setState(() {
  //       myIndex = index;
  //     });
  //     // Handle button tap
  //   },
  // ),
  //body: Container(color: Colors.blueAccent),

// Scaffold(
//   bottomNavigationBar: CurvedNavigationBar(
//     backgroundColor: Colors.blueAccent,
//     items: <Widget>[
//       Icon(Icons.add, size: 30),
//       Icon(Icons.list, size: 30),
//       Icon(Icons.compare_arrows, size: 30),
//       //Icon(Icons.compare_arrows, size: 30),
//       //Icon(Icons.compare_arrows, size: 30),
//     ],
//     onTap: (index) {
//       //Handle button tap
//     },
//   ),
//   //body: Container(color: Colors.blueAccent),
// );




//Container(
    //             decoration: const BoxDecoration(
    //               borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    //               color: Colors.white,
    //               boxShadow: [
    //                 BoxShadow(color: Colors.black,blurRadius: 20),
    //                 ]
    //             ),
    //             height: 80,
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
    //               child: GNav(
    //                 gap: 8,
    //                 padding: const EdgeInsets.all(15),
    //                 backgroundColor: Colors.white,
    //                 tabBackgroundColor: const Color.fromARGB(255, 220, 255, 236),
    //                 tabs: [
    //                 GButton(icon: Icons.home_outlined,text: "Home",onPressed: (){},),
    //                 GButton(icon: Icons.manage_search_rounded,text: "Explore",onPressed: (){},),
    //                 GButton(icon: Icons.shopping_cart_outlined,text: "Cart",onPressed: (){},),
    //                 GButton(icon: Icons.favorite_border_rounded,text: "Wishlist",onPressed: (){},),
    //                 GButton(icon: Icons.person_outline_rounded,text: "Profile",onPressed: (){},),
    //                 //GButton(icon: Icons.home_outlined,text: "Home",)
    //               ],
    //               ),
    //             ),
    //           );