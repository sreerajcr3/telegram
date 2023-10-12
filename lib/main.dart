
import 'package:flutter/material.dart';
import 'package:telegram/login_page%20.dart';



main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Login(),
      debugShowCheckedModeBanner: false,
    );
  }
 
}




