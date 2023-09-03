import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imagePreview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child:
            const Text("Image Preview Offline",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300
              ),
            ),

          ),

          Container(
            child: Image.asset('assets/images/demo.png'),

          ),
        ],
      ),

    );
  }
  
}