import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridView extends StatelessWidget{

  var arrColor = [Colors.blue,Colors.red,Colors.purple,Colors.teal,Colors.orange];
  int j = Random().nextInt(8);
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
       body:

        GridView.builder( gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent (maxCrossAxisExtent: 140),itemBuilder: (context,index){
          return Container(color: arrColor[index],);

        },itemCount: arrColor.length,)

           // GridView.extent(maxCrossAxisExtent: 170,
           // children: [
           //   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[0]),),
           //
           //   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[1]),),
           //
           //   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[2]),),
           //
           //   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[3]),),
           //
           //   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[4]),),
           //
           //
           // ],),

// Container(
      //   width: MediaQuery.of(context).size.width / 2,
      //   child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,
      //   children: [
      //     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[0]),),
      //
      //     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[1]),),
      //
      //     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[2]),),
      //
      //     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[3]),),
      //
      //     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 10,color:Colors.white70,style: BorderStyle.solid ),color: arrColor[4]),),
      //
      //   ],),
      // ),

      
    );
  }
}