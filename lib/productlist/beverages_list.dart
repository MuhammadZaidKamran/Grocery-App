import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/custom_card.dart';

class BeveragesList extends StatefulWidget {
  const BeveragesList({super.key});

  @override
  State<BeveragesList> createState() => _BeveragesListState();
}

class _BeveragesListState extends State<BeveragesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 64, 64, 64),
        elevation: 5,
        title: const Text("Beverages",style: TextStyle(fontWeight: FontWeight.w800),),
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
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",),
                  CustomCard(picture: "assets/Images/beverages.png",price: "140",title: "Tomato",)
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