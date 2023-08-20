import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 60,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(

              ),
            ),
          ),
        ],
      ),
    );
  }
}