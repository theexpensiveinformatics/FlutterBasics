import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';

class splash_screen extends StatefulWidget
{
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 2), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()));});

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children: [

          SizedBox(
          width:200, height: 150,
          child: Hero(tag: 'img',
              child: Image.asset('assets/images/flutter.png'))),
          //
          // Text("Radha Krishna",style: Theme.of(context).textTheme.displayLarge,)
        ],
        ),
      ),
    );
  }
}