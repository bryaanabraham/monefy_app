import 'package:flutter/material.dart';
import 'package:monefy_app/start_up_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monefy',
      home: StartUpPage(),
    );
  }
}
