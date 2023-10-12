import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  final String message;
  final bool isSender;
  const chat({super.key,required this.message,required this.isSender});

  @override
  Widget build(BuildContext context) {
    return  Column(
      
    children: [
     Text(message,style:TextStyle(fontSize: 15) ,),   
    ],
    );
  }
}