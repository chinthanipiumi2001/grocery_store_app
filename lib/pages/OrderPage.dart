import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                  Icons.arrow_back,
                size: 28,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fill Order Detail",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(162, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}