import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/custom_card.dart';

class BakeryList extends StatefulWidget {
  const BakeryList({super.key});

  @override
  State<BakeryList> createState() => _BakeryListState();
}

class _BakeryListState extends State<BakeryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 64, 64, 64),
        elevation: 5,
        title: const Text("Bakery & Snacks",style: TextStyle(fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/bakery&snacks.png",price: "140",title: "Tomato",)
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