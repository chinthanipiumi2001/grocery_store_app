import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_store_app/pages/HomePage.dart';
import 'package:grocery_store_app/pages/ItemPage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}

