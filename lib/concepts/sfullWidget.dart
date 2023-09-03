import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/styles/button.dart';
import 'package:flutter_demo/styles/color.dart';

class sfullWidget extends StatefulWidget
{
  @override
  State<sfullWidget> createState()=> _sfullWidgetState();
}

class _sfullWidgetState extends State<sfullWidget>
{
  
  int count = 0;
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(color: background,
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count : $count"),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){setState(() {
                count++;
              });}, child: Text('Increment'),style: buttonPrimary,)
            ],
          ),
        ),
      ),
    );
  }
}