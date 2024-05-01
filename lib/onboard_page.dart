import 'package:flutter/material.dart';
import 'package:grocery_app_10/number_page.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/Images/Onboarding Pics.jpg"),fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              margin: const EdgeInsets.only(top: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.park_rounded,size: 80,color: Colors.white,)
                    ],
                  ),
              
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome",style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w500),)
                    ],
                  ),
              
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("to our store",style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w500),)
                    ],
                  ),
              
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get your groceries in as fast as one hour",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w200),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(onPressed: (){
                             Navigator.pushReplacement(
                                context,
                               MaterialPageRoute(builder: (context) => const NumberPage()),
                               );
                          },style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green),shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(40)), child: const SizedBox(
                            width: 190,
                            height: 60,
                            child: Center(child: Text("Get Started",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),))),
                            ),
                        ),
                      ) 
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}