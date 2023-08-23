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
      child: Row(
        children: [
          Column(
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
                Container(
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(225, 225, 230, 177),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "images/1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                    padding:EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "Item Name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height:12),
                    ],
                  ),
                ),
              ],),
            ],),
        ],
      ),
    );
  }
}