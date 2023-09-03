import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clipRRect extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/gredient.jpeg'))),
    );
  }

}