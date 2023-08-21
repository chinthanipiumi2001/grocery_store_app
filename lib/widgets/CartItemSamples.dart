import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget{
  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples>{
  bool checkedValue = false;
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
      child: Column(
        children: [
          Row(children: [
            Checkbox(
              activeColor: Color(0xFFFFB608),
              value: checkedValue,
              onChanged: (newValue){
                setState(() {
                  checkedValue = newValue!;
                });
              },
            ),
          ],),
        ],),
    );
  }
}