import 'package:flutter/material.dart';
import 'package:grocery_app_10/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:grocery_app_10/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/Images/vegetables.webp"),fit: BoxFit.cover),),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(221, 236, 236, 236),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(left: 5,right: 5,top: 100),
              child:  Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.park_rounded,color: Colors.green,size: 100,shadows: [Shadow(color: Colors.black,blurRadius: 15,)],)
                    ],
                  ),
                  const SizedBox(height: 35,),
                  const Row(
                    children: [
                      Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Enter your email and password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  TextFormField(
                    controller: emailController,
                    cursorColor: Colors.green,
                    cursorRadius: const Radius.circular(10),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value!.length < 12 ? 'Enter email' : null;
                    },
                    //validator: (character) => character!.length < 12 && character.isNotEmpty ? 'Email doesnot exist' : null,
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
                      // errorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red,width: 4),
                      //   borderRadius: BorderRadius.all(Radius.circular(20))
                      // ),
                    ),
                  ),
                  const SizedBox(height: 35,),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isVisible,
                    cursorColor: Colors.green,
                    cursorRadius: const Radius.circular(10),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value!.length < 8 ? 'Enter Password' : null;
                    },
                    //validator: (character) => character!.length < 8 && character.isNotEmpty ? 'Wrong password' : null,
                    decoration:  InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          isVisible = !isVisible;
                          setState(() {
                            
                          });
                        },
                        child: Icon(
                          isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined
                        ),
                      ),
                      enabled: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 238, 237, 237),
                      focusColor: const Color.fromARGB(255, 30, 255, 37),
                      contentPadding: const EdgeInsets.all(17),
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.green),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green,width: 3),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                      ),
                      // errorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red,width: 4),
                      //   borderRadius: BorderRadius.all(Radius.circular(20))
                      // ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: const Icon(Icons.error_outline,size: 120,color: Colors.red,),
                            actions: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                //margin: EdgeInsets.only(right: 0,left: 10),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Try Again !",textAlign: TextAlign.start,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                                  ],
                                )
                                ),
                                const SizedBox(height: 20,),
                                SizedBox(
                                  width: double.infinity,
                                  height: 45,
                                  child: ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                  },style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green),shadowColor: MaterialStatePropertyAll(Colors.black),elevation: MaterialStatePropertyAll(20)), child: const Text("Try Again",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),),
                                )
                            ],
                          );
                        }
                        );
                      }, child: const Text("Forgot Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.green))
                     )
                      //
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(onPressed: (){
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                      }
                    },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(20)), child: const Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                      const SizedBox(width: 1,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                      }, child: const Text("Sign Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.green),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}








//  onTap: () {
                  //    Border.all(color: Colors.redAccent,style: BorderStyle.solid,);
                  //    setState(() {
                      
                  //    });
                  //  },