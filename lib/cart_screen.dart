import 'package:flutter/material.dart';
import 'package:grocery_app_10/cart_counter.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';
import 'package:grocery_app_10/order_accepted_screen.dart';

class CartScreen extends StatefulWidget {
  
  // final List<String>? cartImg;
  // final List<String>? cartTitle;
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // late final List<String> cartImg;
  // late final List cartTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      appBar: AppBar(
        title: const Text("My Cart",style: TextStyle(fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: addProduct.length,
              itemBuilder: (context,index){
                return ListTile(
                  shape: const OutlineInputBorder(borderSide: BorderSide(width: 0.1)),
                  horizontalTitleGap: 10,
                  tileColor: Colors.white,
                  leading: Image.asset(addProduct[index]),
                  title: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${addProductTitle[index]}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                          const Text("1 Kg,Price"),
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: (){
                        addProduct.removeAt(index);
                        setState(() {
                          
                        });
                      }, icon: const Icon(Icons.delete_outline_rounded,color: Colors.red,))
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 10,),
                          CartCounter(),
                          // Row(
                          //   children: [
                          //     GestureDetector(
                          //       onTap: () {
                          //         counter--;
                          //         setState(() {
                                    
                          //         });
                          //       },
                          //       child: Container(
                          //         decoration: BoxDecoration(color: const Color.fromARGB(255, 221, 221, 221),borderRadius: BorderRadius.circular(15)),
                          //         height: 40,
                          //         width: 40,
                                  
                          //         child: const Center(child: Text("-",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),)),
                          //       ),
                          //     ),
                          //     const SizedBox(width: 15,),
                          //     Text("$counter",style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          //     const SizedBox(width: 15,),
                          //     IconButton.filled(onPressed: (){
                          //       counter++;
                          //       setState(() {
                                  
                          //       });
                          //     }, icon: const Icon(Icons.add),style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 78, 204, 99)),iconColor: const MaterialStatePropertyAll(Colors.white),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(10)),),
                          //   ],
                          // )
                        ],
                      ),
                      const Spacer(),
                      const Text("Rs.140",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),)
                    ],
                  ),
                );
              }),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (BuildContext context){
                return Container(
                  padding: const EdgeInsets.all(25),
                  //margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Checkout",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                          const Spacer(),
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: const Icon(Icons.cancel_rounded),color: const Color.fromARGB(255, 221, 79, 69),)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          Text("Total Cost"),
                          Spacer(),
                          Text("360 PKR",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderAcceptedScreen()));
                      },style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(280, 50)),backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 63, 188, 67)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))), child: const Text("Place Order",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),)
                    ],
                  ),
                );
              });
            },style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(280, 50)),backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 63, 188, 67)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))), child: const Text("Checkout",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),)
            ),
        ],
      ),
     // bottomNavigationBar: BottomNavBar(),
        //floatingActionButton: FloatingActionButton(onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoriteList()));
       // },
       // ),
    )
    );
  }
}