import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';
import 'package:grocery_app_10/listcard/custom_card.dart';

class CookingOilList extends StatefulWidget {
  const CookingOilList({super.key});

  @override
  State<CookingOilList> createState() => _CookingOilListState();
}

class _CookingOilListState extends State<CookingOilList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 64, 64, 64),
        elevation: 5,
        title: const Text("Cooking Oil & Ghee",style: TextStyle(fontWeight: FontWeight.w800),),
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
                                      Image.asset("assets/Images/sufi_cooking_oil.png",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Sufi Oil",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                                        addProduct.add("assets/Images/sufi_cooking_oil.png");
                                        addProductTitle.add("Sufi Cooking Oil");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                              ),
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/cooking_oil.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}