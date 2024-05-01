import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';

class CardDetails extends StatefulWidget {

  final String? detailPicture;
  final String? detailTitle;
  final String? detailPrice;
  const CardDetails({super.key, this.detailPicture, this.detailTitle, this.detailPrice});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               height: 450,
               child: Expanded(
                 child: BackdropFilter(
                   filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
                   child: Container(
                     //margin: EdgeInsets.only(top: 30),
                     height: 350,
                     decoration: BoxDecoration(
                       color: const Color.fromARGB(255, 230, 230, 230).withOpacity(0.6),
                       borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                       border: Border.all(color: const Color.fromARGB(255, 255, 255, 255),width: 0),
                       boxShadow: const [BoxShadow(color: Color.fromARGB(255, 208, 208, 208),blurRadius: 10)]
                     ),
                     child: Column(
                       children: [
                         const SizedBox(height: 50,),
                         Row(
                           children: [
                             IconButton(onPressed: (){
                               Navigator.pop(context);
                             }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
                           ],
                         ),
                         Center(
                           child: Image(image: AssetImage("${widget.detailPicture}"),height: 340,width: 340,),
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
             const SizedBox(height: 20,),
             Column(
               children: [
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 15),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Text("${widget.detailTitle}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)
                         ],
                       ),
                       const Row(
                         children: [
                           Text("1kg, Price",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),)
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Text("${widget.detailPrice}",style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w900),)
                         ],
                       ),
                       const SizedBox(height: 15,),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("------------------------------------------------------")
                         ],
                       ),
                       const SizedBox(height: 15,),
                       const Row(
                         children: [
                           Text("Product Detail",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                         ],
                       ),
                       const SizedBox(height: 8,),
                       const Text("Apples are a good source of nutrients, including fiber, vitamin C, and antioxidants which can help support healthy digestion, brain health, and weight management. There is evidence that apples can also protect against certain chronic diseases, including cancer, heart disease, and type 2 diabetes.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                        
                       const SizedBox(height: 15,),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("-------------------------------------------------------")
                         ],
                       ),
                        
                       const SizedBox(height: 10,),
                       Row(
                         children: [
                           const Text("Weight",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                           const Spacer(),
                           SizedBox(
                             child: Container(
                              height: 27,
                              width: 55,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 185, 185, 185),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: const Center(
                                child: Text("100gm",style: TextStyle(fontSize: 10),),
                              ),
                             ),
                           ),
                           const SizedBox(height: 10,),
                         ],
                       ),
                       
                     ],
                   ),
                 ),
               ],
             )
           ],
         ),
       ),
       bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ElevatedButton.icon(onPressed: (){
                addProduct.add("assets/Images/apple.png");
                addProductTitle.add("Apple");
                setState(() {});
              }, icon: const Icon(Icons.shopping_cart_outlined,size: 35,color: Colors.white,), label: const Text("Add to Cart",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w800),),style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(280, 50)),maximumSize: const MaterialStatePropertyAll(Size(350, 55)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),backgroundColor: const MaterialStatePropertyAll(Colors.green),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(10)),)),
              const Spacer(),
              IconButton(onPressed: (){
                isFavorite = !isFavorite;
                favoriteList.add("assets/Images/apple.png");
                favoriteListTitle.add("Apple");
                setState(() {});
              }, icon: const Icon(Icons.favorite),color: isFavorite ? const Color.fromARGB(255, 192, 192, 192) : const Color.fromARGB(255, 255, 0, 0),style: const ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(30),iconSize: MaterialStatePropertyAll(38)),)
              
            // 
          ],
        ),
       ),
    );
  }
}
    
//IconButton(onPressed: (){
            //   isLike = !isLike;
            //   setState(() {
                
            //   });
            // }, icon: Icon(Icons.favorite_rounded,size: 40,color: isLike? Color.fromARGB(255, 187, 187, 187) : Colors.red,),style: ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(30)),)