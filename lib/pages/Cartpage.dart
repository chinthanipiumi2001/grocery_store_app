import 'package:flutter/material.dart';
import 'package:grocery_store_app/widgets/CartItemSamples.dart';

class CartPage extends StatefulWidget{
  @override
  State<CartPage> createState() => _CartPageState();
}
class _CartPageState extends State<CartPage>{
  bool checkValue = false;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding:EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFB608),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Color(0xFFFFB608),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(children: [
              CheckboxListTile(
                activeColor:Color(0xFFFFB608),
                title: Text(
                    "Select all items",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                value: checkValue,
                onChanged: (newValue){
                  setState(() {
                    checkValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Divider(height: 30,thickness: 1),
              CartItemSamples(),
            ],),
          ),
        ],
      ),
    );
  }
}