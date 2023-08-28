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
        ],
      ),
    );
  }
}