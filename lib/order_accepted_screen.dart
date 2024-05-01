import 'package:flutter/material.dart';
import 'package:grocery_app_10/bottom_nav_bar/bottom_navigation_bar.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Icon(Icons.check_circle_rounded,size: 140,color: Color.fromARGB(255, 70, 165, 73),),
            ),
            const SizedBox(height: 30,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Order has been",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("accepted",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)
              ],
            ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your items has been placcd and is on")
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("it’s way to being processed")
              ],
            ),
            const SizedBox(height: 70,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
            },style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(280, 50)),backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 63, 188, 67)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(10)), child: const Text("Continue",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(280, 50)),backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(10)), child: const Text("Go Back",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 36, 174, 48),fontWeight: FontWeight.w500),),),
          ],
        ),
      ),
    );
  }
}
// 
//