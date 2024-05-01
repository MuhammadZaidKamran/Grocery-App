import 'package:flutter/material.dart';
import 'package:grocery_app_10/bottom_nav_bar/bottom_navigation_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
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
              margin: const EdgeInsets.only(left: 10,right: 10,top: 40),
              child:  Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.park_rounded,color: Colors.green,size: 100,shadows: [Shadow(color: Colors.black,blurRadius: 15,)],)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,wordSpacing: 3,shadows: [Shadow(color: Colors.black,blurRadius: 0)]),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: usernameController,
                    cursorColor: Colors.green,
                    cursorRadius: const Radius.circular(10),
                    keyboardType: TextInputType.name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value!.length <= 2 ? 'Enter Username' : null;
                    },
                    //validator: (character) => character!.length < 12 && character.isNotEmpty ? 'Email doesnot exist' : null,
                    decoration:  InputDecoration(
                      enabled: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 238, 237, 237),
                      focusColor: const Color.fromARGB(255, 30, 255, 37),
                      contentPadding: const EdgeInsets.all(15),
                      labelText: "Username",
                      labelStyle: const TextStyle(color: Color.fromARGB(255, 63, 154, 66)),
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
                  const SizedBox(height: 25,),
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
                  const SizedBox(height: 25,),
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
                  const SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("By continuing you agree to our",style: TextStyle(fontSize: 9),),
                          TextButton(onPressed: (){}, child: const Text("Terms of Service",style: TextStyle(color: Colors.green,fontSize: 10),)),
                          //
                        ],
                      ),
                      const Text("and",style: TextStyle(fontSize: 10),),
                      TextButton(onPressed: (){}, child: const Text("Privacy Policy.",style: TextStyle(color: Colors.green,fontSize: 10),)),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(onPressed: (){
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                      }
                    },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),shadowColor: const MaterialStatePropertyAll(Colors.black),elevation: const MaterialStatePropertyAll(20)), child: const Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                      const SizedBox(width: 1,),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.green),))
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