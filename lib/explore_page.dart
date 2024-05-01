import 'package:flutter/material.dart';
import 'package:grocery_app_10/productlist/bakery_snacks_list.dart';
import 'package:grocery_app_10/productlist/beverages_list.dart';
import 'package:grocery_app_10/productlist/cooking_oil_ghee_list.dart';
import 'package:grocery_app_10/productlist/dairy_eggs_list.dart';
import 'package:grocery_app_10/productlist/fruits_vegetables_list.dart';
import 'package:grocery_app_10/productlist/meat_fish_list.dart';
//import '../productlist/fruits_vegetables_list.dart';
//import 'package:flutter/fruits_vegetables_list.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products",style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          //margin: const EdgeInsets.only(top: 0),
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 25,),
              TextField(
                
                decoration: InputDecoration(
                  hintText: "Search Store",
                  contentPadding: const EdgeInsets.all(18),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 220, 220, 220),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      color: Color.fromARGB(255, 223, 221, 221),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      color: Color.fromARGB(255, 223, 221, 221),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              const SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FruitsList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 9, 183, 99),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 225, 255, 240),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/fruits_vegetables.png",height: 100,width: 130,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 5,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Fresh Fruits",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("& Vegetables",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CookingOilList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 202, 134, 8),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 254, 242, 213),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/cooking_oil.png",height: 100,width: 130,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 6,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Cooking Oil",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("& Ghee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MeatList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 237, 41, 41),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 255, 223, 223),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/meat&fish.png",height: 110,width: 140,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 15,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Meat & Fish",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text("& Vegetables",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BakeryList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 243, 63, 222),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 255, 229, 252),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/bakery&snacks.png",height: 105,width: 135,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 0,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Bakery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                           const Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("& Snacks",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                             ],
                           ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EggsList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 207, 216, 32),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 251, 254, 228),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/dairy&eggs.png",height: 115,width: 145,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dairy & Eggs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text("& Vegetables",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BeveragesList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)],
                        border: Border.all(color: const Color.fromARGB(255, 6, 114, 215),width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 221, 244, 254),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/Images/beverages.png",height: 110,width: 140,filterQuality: FilterQuality.high,),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Beverages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text("& Snacks",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
     // bottomNavigationBar: BottomNavBar(),
    );
  }
}