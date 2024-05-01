import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  counter--;
                                  setState(() {
                                    
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(color: const Color.fromARGB(255, 221, 221, 221),borderRadius: BorderRadius.circular(15)),
                                  height: 40,
                                  width: 40,
                                  
                                  child: const Center(child: Text("-",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Text("$counter",style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              const SizedBox(width: 15,),
                              IconButton.filled(onPressed: (){
                                counter++;
                                setState(() {
                                  
                                });
                              }, icon: const Icon(Icons.add),style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 78, 204, 99)),iconColor: const MaterialStatePropertyAll(Colors.white),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(10)),),
                            ],
                          );
  }
}