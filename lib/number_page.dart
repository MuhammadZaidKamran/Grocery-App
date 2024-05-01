import 'package:flutter/material.dart';
import 'package:grocery_app_10/login_page.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';

final _formkey = GlobalKey<FormState>();

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 150,right: 5,left: 5),
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Enter your mobile number",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  validator: (number) => number!.length < 11 ? 'Number should be atleast 11 Characters' : null,
                  controller: phoneNumber,
                  decoration: InputDecoration(
                    
                    labelText: "Phone Number",
                    contentPadding: const EdgeInsets.all(18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(width: 5,style: BorderStyle.solid)
                    )
                  ),
                  // validator: (number) {
                  //   return number == '03212173733' ? null : 'Phone number doesnot Exist';
                  //  },
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  
                  // initialCountryCode: "PK",
                  // onChanged: (phone){
                  //   if (kDebugMode) {
                  //     print(phone.completeNumber);
                  //   }
                  // },
                  // inputFormatters: <TextInputFormatter> [
                  //   FilteringTextInputFormatter.allow(
                  //     RegExp(r'[0,9]')
                  //   ),
                  //   FilteringTextInputFormatter.digitsOnly
                  // ],
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    }
                  },style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 97, 201, 101)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))), child: const Text("Continue",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w800),),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}