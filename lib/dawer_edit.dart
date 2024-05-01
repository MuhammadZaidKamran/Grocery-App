import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_10/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';
import 'package:grocery_app_10/toast_message.dart';

class DrawerEdit extends StatefulWidget {
  const DrawerEdit({super.key});

  @override
  State<DrawerEdit> createState() => _DrawerEditState();
}

class _DrawerEditState extends State<DrawerEdit> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF53B175),
        title: Text("Edit",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(55),
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage("assets/Images/circle_avatar.jpg"),
                      ),
                      SizedBox(height: 40,),
              TextField(
                controller: userNameController,
                cursorColor: Colors.green,
                keyboardType: TextInputType.name,
                decoration:  InputDecoration(
                          enabled: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 238, 237, 237),
                          focusColor: const Color.fromARGB(255, 30, 255, 37),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: "Full Name",
                          labelStyle: const TextStyle(color: Colors.green),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green,width: 3),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                          ),
                        ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: userEmailController,
                cursorColor: Colors.green,
                keyboardType: TextInputType.name,
                decoration:  InputDecoration(
                          enabled: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 238, 237, 237),
                          focusColor: const Color.fromARGB(255, 30, 255, 37),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: "Email",
                          labelStyle: const TextStyle(color: Colors.green),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green,width: 3),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                          ),
                        ),
              ),
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    userNameController.clear();
                    userEmailController.clear();
                  }, child: Text("Cancel",style: TextStyle(color: Color(0xFF53B175)),),style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(130, 55)),shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(5),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),),
                  ElevatedButton(onPressed: (){
                    toaster_2();
                    userName.add(userNameController.text);
                    userEmail.add(userEmailController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                    setState(() {});
                  }, child: Text("Save",style: TextStyle(color: Colors.white),),style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(130, 55)),shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(5),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),backgroundColor: MaterialStatePropertyAll(Color(0xFF53B175))),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}