import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';

class MeatList extends StatefulWidget {
  const MeatList({super.key});

  @override
  State<MeatList> createState() => _MeatListState();
}

class _MeatListState extends State<MeatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 64, 64, 64),
        elevation: 5,
        title: const Text("Meat & Fish",style: TextStyle(fontWeight: FontWeight.w800),),
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
                                      Image.asset("assets/Images/meat.jpg",height: 95,width: 110,filterQuality: FilterQuality.high,)
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
                                      Text("210 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        addProduct.add("assets/Images/meat.jpg");
                                        addProductTitle.add("Meat");
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
                                      Text("210 PKR",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
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
                                      Image.asset("assets/Images/mutton.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Mutton",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/mutton.png");
                                        addProductTitle.add("Mutton");
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
                                      Image.asset("assets/Images/meat_2.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Beef",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/meat_2.png");
                                        addProductTitle.add("Fresh Beef");
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
                                      Image.asset("assets/Images/chicken.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Chicken",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/chicken.png");
                                        addProductTitle.add("Boneless Chicken");
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