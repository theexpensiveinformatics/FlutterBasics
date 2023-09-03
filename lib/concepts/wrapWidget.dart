import 'package:flutter/material.dart';

class wrapWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
        surfaceTintColor: Colors.blue,
        backgroundColor: Colors.blue,
        actionsIconTheme: IconThemeData(color: Colors.white),

        leading: AppBar(backgroundColor: Colors.white70,),
      ),

      body: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.purple),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.red),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.yellow),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.grey),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.black87),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.teal),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.deepPurple),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.cyan),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.black87),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.teal),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.deepPurple),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.cyan),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.black87),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.teal),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.deepPurple),
          ),
          Container(
            width: 75,
            height: 75,

            decoration: BoxDecoration(border: Border.all(color: Colors.white10,width: 10,),color: Colors.cyan),
          ),
        ],

      ),
    );
  }

}