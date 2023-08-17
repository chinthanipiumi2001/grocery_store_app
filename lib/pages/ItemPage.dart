import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(225, 225, 230, 177),
            width: 390,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                    padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ]
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color:Color(0xFFFFB608),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "images/2.png",
                  height: 280,
                  width: 280,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "\$50",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFB608),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}