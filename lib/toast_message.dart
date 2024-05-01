import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toaster(){
  Fluttertoast.showToast(
        msg: "Add to Cart Successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFF53B175),
        textColor: Colors.white,
        fontSize: 16.0
    );
}

toaster_2(){
  Fluttertoast.showToast(
        msg: "Saved!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFF53B175),
        textColor: Colors.white,
        fontSize: 16.0
    );
}