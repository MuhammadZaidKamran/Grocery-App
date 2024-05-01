import 'package:flutter/material.dart';
import 'package:grocery_app_10/listcard/cart_2.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      appBar: AppBar(
        title: const Text("Favorite",style: TextStyle(fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context,index){
                return ListTile(
                  tileColor: Colors.white,
                  horizontalTitleGap: 10,
                  leading: Image.asset(favoriteList[index]),
                  title: Row(
                    children: [
                      Text("${favoriteListTitle[index]}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      const Spacer(),
                      IconButton(onPressed: (){
                        favoriteList.removeAt(index);
                        setState(() {
                          
                        });
                      }, icon: const Icon(Icons.cancel_outlined,color: Colors.red,))
                    ],
                  ),
                  subtitle: const Row(
                    children: [
                      Text("500 ml, Price"),
                      Spacer(),
                      Text("150 PKR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                    ],
                  ),
                );
              }),
          ),
          
        ],
      ),
     // bottomNavigationBar: BottomNavBar(),
    ),
    
    );
  }
}