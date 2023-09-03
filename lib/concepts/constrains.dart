import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class constrains extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(constraints: BoxConstraints(maxHeight: 100,maxWidth: 150,minHeight: 100,minWidth: 100),
                child: Text("Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe",style: TextStyle(fontSize: 20),overflow: TextOverflow.fade,)),
          ),

          SizedBox(height: 20,), 
          Center(
            child: ConstrainedBox(constraints: BoxConstraints(maxHeight: 100,maxWidth: 150,minHeight: 100,minWidth: 100),
                child: Text("Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe",style: TextStyle(fontSize: 20),overflow: TextOverflow.ellipsis,)),
          ),

          SizedBox(height: 20,),
          Center(
            child: ConstrainedBox(constraints: BoxConstraints(maxHeight: 100,maxWidth: 150,minHeight: 100,minWidth: 100),
                child: Text("Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe Radhe",style: TextStyle(fontSize: 20),overflow: TextOverflow.clip,)),
          ),



        ],
      ),

    );
  }
}