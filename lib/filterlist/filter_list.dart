import 'package:flutter/material.dart';
import 'package:grocery_app_10/filterlist/search_filter.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {

  // ignore: non_constant_identifier_names
  static List<SearchFilter> main_search_filter_list = [
    SearchFilter("Eggs", "assets/Images/Eggs.jpg"),
  ];

  // ignore: non_constant_identifier_names
  TextEditingController search_menu = TextEditingController();

  // ignore: non_constant_identifier_names
  List<SearchFilter> display_list = List.from(main_search_filter_list);

  void updateList(value){
    display_list = main_search_filter_list.where((element) => element.search_title!.toLowerCase().contains(value.toString())).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextField(
              controller: search_menu,
              onChanged: (value) => updateList(value),
              decoration: const InputDecoration(
                hintText: "Search Store",
                contentPadding: EdgeInsets.all(20),
                prefixIcon: Icon(Icons.search_rounded,size: 32,),
                filled: true,
                fillColor: Color.fromARGB(255, 236, 236, 236),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(27)),
                )
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(child: display_list.isEmpty ? const Center(child: Text("No result found",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w800),),) : ListView.builder(
               itemCount: display_list.length,
               itemBuilder: (context,index) => ListTile(
                 leading: Image.asset(display_list[index].search_poster!),
                 title: Text(display_list[index].search_title!,style: const TextStyle(fontWeight: FontWeight.w700),),
               ))),
          ],
        ),
      ),
    );
  }
}