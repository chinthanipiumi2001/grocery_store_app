import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}