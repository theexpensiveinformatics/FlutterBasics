import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heroAnimation extends StatefulWidget{
  
  @override
  State<heroAnimation> createState() => _heroAnimationState();
}

class _heroAnimationState extends State<heroAnimation> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Hero(tag: 'img',
      child: Image.asset("assets/images/flutter.png")),
    );
  }
}