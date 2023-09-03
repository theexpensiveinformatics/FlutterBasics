import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class richText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: 'thic',
              fontWeight: FontWeight.w700,
              textBaseline: TextBaseline.alphabetic,
            ),
            children: [
              TextSpan(text: 'Radha'),
              TextSpan(text: ' Krishna',style: TextStyle(fontFamily: 'bold',color: Colors.blue),),

            ]
          ),
        ),
      ),
    );
  }

}