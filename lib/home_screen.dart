
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app_10/card_details.dart';
import 'package:grocery_app_10/cart_screen.dart';
import 'package:grocery_app_10/dawer_edit.dart';
//import 'package:grocery_app_10/drawer.dart';
import 'package:grocery_app_10/explore_page.dart';
import 'package:grocery_app_10/favorite_list.dart';
import 'package:grocery_app_10/filterlist/filter_list.dart';
import 'package:grocery_app_10/filterlist/search_filter.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grocery_app_10/toast_message.dart';
//import 'package:grocery_app_10/listcard/list_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // List userName_2 = [
  //   userName.firstOrNull,
  // ];
  // List userEmail_2 = [
  //   userEmail.firstOrNull,
  // ];

  // ignore: non_constant_identifier_names
  TextEditingController search_bar = TextEditingController();

  // ignore: non_constant_identifier_names
  static List<SearchFilter> main_search_filter_list = [
    SearchFilter("Eggs", "assets/Images/Eggs.jpg")
  ];

  // ignore: non_constant_identifier_names
  List<SearchFilter> display_list = List.from(main_search_filter_list);

  void updateList(value){
    display_list = main_search_filter_list.where((element) => element.search_title!.toLowerCase().contains(value.toString())).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // padding: EdgeInsets.all(25),
           margin: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Container(
                color: Color(0xFF53B175),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/Images/circle_avatar.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("${userName.firstOrNull}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerEdit()));
                                }, icon: Icon(Icons.mode_edit_outlined,color: Colors.white,))
                              ],
                            ),
                            Text("${userEmail.firstOrNull}",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.white),),
                            
                          ],
                        ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ExplorePage()));
                },
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.2))),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.manage_search_rounded,size: 30,),
                      SizedBox(width: 10,),
                      Text("Explore",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                    ],
                  ),
                ),
              ),
    
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.2))),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined,size: 30,),
                      SizedBox(width: 10,),
                      Text("My Cart",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoriteList()));
                },
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.2))),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border_rounded,size: 30,),
                      SizedBox(width: 10,),
                      Text("Favorites",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                    ],
                  ),
                ),
              ),
    
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF53B175),
        //backgroundColor: Color.fromARGB(255, 54, 160, 45),
        title: Icon(Icons.park_rounded,size: 45,color: Color.fromARGB(255, 238, 238, 238),),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 219, 242, 231),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(30),
                child:  Column(
                  children: [
                    const SizedBox(height: 5,),
                    TextField(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterList()));
                      },
                      controller: search_bar,
                      onChanged: (value) => updateList(value),
                      decoration: const InputDecoration(
                        hintText: "Search Store",
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Icon(Icons.search_rounded,size: 32,),
                        filled: true,
                        fillColor: Color.fromARGB(255, 217, 217, 217),
                        enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)), 
                  ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(27)),
                        )
                      ),
                    ),
                    const SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ExplorePage()));
                      },
                      child: Container(
                        //child: Image.asset("",filterQuality: FilterQuality.high,fit: BoxFit.cover,),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 10)],
                          image: const DecorationImage(image: AssetImage("assets/Images/Fresh_Vegetables.webp"),fit: BoxFit.fill),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )
                    ),
                    const SizedBox(height: 25,),
                    const Row(
                      children: [
                        Text("Exclusive Offer",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
              ),
            ),
            Column(
              children: [
               SingleChildScrollView(
                          padding: const EdgeInsets.only(left: 30,top: 5,bottom: 5),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailTitle: "Natural Red Apple",detailPicture: "assets/Images/apple.png",detailPrice: "Rs.150",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/apple.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Apple",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("140 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/apple.png");
                                        addProductTitle.add("Apple");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/banana_2.png",detailTitle: "Banana",detailPrice: "Rs.180",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/banana_2.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Bananas",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("190 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/banana_2.png");
                                        addProductTitle.add("Banana");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/Tomato_2.png",detailTitle: "Tomatoes",detailPrice: "Rs.220",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/Tomato_2.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Tomatoes",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("220 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/Tomato_2.png");
                                        addProductTitle.add("Tomatoes");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/meat_2.png",detailTitle: "Fresh Meat",detailPrice: "Rs.860",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/meat_2.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Fresh Meat",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("860 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/meat_2.png");
                                        addProductTitle.add("Fresh Meat");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/fish_2.webp",detailTitle: "Fish",detailPrice: "Rs.1520",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/fish_2.webp",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Fish",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1520 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/fish_2.webp");
                                        addProductTitle.add("Fish");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.only(left: 30),
                          child: const Row(
                                  children: [
                                   Text("Best Selling",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700),),
                                  ],
                                ),
                        ),
                        const SizedBox(height: 20,),
                         SingleChildScrollView(
                          padding: const EdgeInsets.only(left: 30,top: 5,bottom: 5),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/egg_2.png",detailTitle: "Eggs",detailPrice: "Rs.40",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/Eggs.jpg",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Eggs",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("40 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/Eggs.jpg");
                                        addProductTitle.add("Eggs");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/purepng.coorange-2.png",detailTitle: "Fresh Oranges",detailPrice: "Rs.140",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/purepng.coorange-2.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Oranges",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("140 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/purepng.coorange-2.png");
                                        addProductTitle.add("Oranges");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/grapes_3.webp",detailTitle: "Black Grapes",detailPrice: "Rs.130",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/grapes_3.webp",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Black Grapes",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("130 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/grapes_3.webp");
                                        addProductTitle.add("Black Grapes");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/olpers.webp",detailTitle: "Olpers Milk",detailPrice: "Rs.140",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/olpers.webp",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Olpers Milk",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("140 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/olpers.webp");
                                        addProductTitle.add("Olpers Milk");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(detailPicture: "assets/Images/olpers_cream.jpg",detailTitle: "Olpers Fresh Cream",detailPrice: "Rs.210",)));
                                },
                                child: Container(
                         //padding: const EdgeInsets.only(top: 0),
                            width: 165,
                            height: 230,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 8,)]
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/Images/olpers_cream.jpg",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Fresh Cream",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("210 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        toaster();
                                        addProduct.add("assets/Images/olpers_cream.jpg");
                                        addProductTitle.add("Fresh Cream");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              )),
                            ],
                          ),
                        ),
                      ], 
                    ),
                  ],
                ),
              ),
              //bottomNavigationBar:  BottomNavBar(),
             //floatingActionButton: FloatingActionButton(onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
             //}
             //),
      // 
    );
  }
}


//ListView.builder(
            //    //scrollDirection: Axis.horizontal,
          //      shrinkWrap: true,
        //        physics: NeverScrollableScrollPhysics(),
              //  itemCount: 2,
            //    itemBuilder: (context,index) {
          //        return Container(
        //            width: double.infinity,
      //              height: 100,
    //                color: Colors.black,
  //                );
//              })


//bottomNavigationBar: SafeArea(
       
      //   child: Container(
      //     child: Container(
      //       padding: EdgeInsets.symmetric(horizontal: 10),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           IconButton(onPressed: (){
      //             iconBtn = !iconBtn;
      //             setState(() {
                    
      //             });
      //           }, icon: Icon(iconBtn ? Icons.home : Icons.home_outlined),color: Colors.black,iconSize: 31,),
      //           //SizedBox(width: 15,),
      //           IconButton(onPressed: (){
      //             iconBtn = !iconBtn;
      //             setState(() {
                    
      //             });
      //           }, icon: Icon(iconBtn ? Icons.manage_search_outlined : Icons.search),color: Colors.black,iconSize: 31,),
      //           //SizedBox(width: 15,),
      //           IconButton(onPressed: (){
      //             iconBtn = !iconBtn;
      //             setState(() {
                    
      //             });
      //           }, icon: Icon(iconBtn ? Icons.home : Icons.home_outlined),color: Colors.black,iconSize: 31,),
      //           //SizedBox(width: 15,),
      //           IconButton(onPressed: (){
      //             iconBtn = !iconBtn;
      //             setState(() {
                    
      //             });
      //           }, icon: Icon(iconBtn ? Icons.home : Icons.home_outlined),color: Colors.black,iconSize: 31,),
      //           //SizedBox(width: 15,),
      //           IconButton(onPressed: (){
      //             iconBtn = !iconBtn;
      //             setState(() {
                    
      //             });
      //           }, icon: Icon(iconBtn ? Icons.home : Icons.home_outlined),color: Colors.black,iconSize: 31,),
      //         ],
      //       ),
      //     ),
      //     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      //     decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 255, 255, 255),
      //       boxShadow: [BoxShadow(
      //         color: Colors.black,
      //         blurRadius: 15,
      //       )
      //       ]
      //     ),
      //     //margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
      //     height: 60,
      //   ),
      // ),