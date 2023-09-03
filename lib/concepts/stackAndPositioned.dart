import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stackAndPositioned extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: Stack(

          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
            Positioned(
              left: 30,
              top: 30,
              child: Container(
                height: 200,
                color: Colors.black,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }

}