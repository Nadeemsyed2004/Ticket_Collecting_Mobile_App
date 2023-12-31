import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventix_intern_app/Home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = new TextEditingController();
  bool isvisible= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    );
  }
}




