import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';
//import 'package:grocery_app_10/card_details.dart';
class CustomCard extends StatefulWidget {
  final String? picture;
  final String? title;
  final String? price;
  const CustomCard({super.key, this.picture, this.title, this.price});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  late final String? picture;
  late final String? title;
  late final String? price;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                                      Image.asset("${widget.picture}",height: 95,width: 110,filterQuality: FilterQuality.high,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("${widget.title}",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1kg, Price",style: TextStyle(fontSize: 11,letterSpacing: 1,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                  //const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("${widget.price}",style: const TextStyle(fontSize: 11,fontWeight: FontWeight.w900),)
                                    ],
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(onPressed: (){
                                        addProduct.add("assets/Images/apple.png");
                                        setState(() {
                                          
                                        });
                                      },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 71, 211, 90)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(5)), child: const Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
  }
}