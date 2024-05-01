import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';

class EggsList extends StatefulWidget {
  const EggsList({super.key});

  @override
  State<EggsList> createState() => _EggsListState();
}

class _EggsListState extends State<EggsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 64, 64, 64),
        elevation: 5,
        title: const Text("Dairy & Eggs",style: TextStyle(fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                                      Text("210 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
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
                              ),
                  Container(
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
                              ),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                                      Text("210 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
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
                              ),
                  Container(
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
                                      Image.asset("assets/Images/yogurt.avif",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Yougurt",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/yogurt.avif");
                                        addProductTitle.add("Yougurt");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              ),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                                      Image.asset("assets/Images/bread.avif",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Milky Bread",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/bread.avif");
                                        addProductTitle.add("Milky Bread");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              ),
                  Container(
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
                                      Image.asset("assets/Images/school-bun.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("School Bun",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/school-bun.png");
                                        addProductTitle.add("School Bun");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              ),
                ],
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}