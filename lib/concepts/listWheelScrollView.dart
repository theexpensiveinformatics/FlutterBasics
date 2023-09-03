import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listWheelScrollView extends StatefulWidget
{

  @override
  State<listWheelScrollView> createState() => _listWheelScrollViewState();
}

class _listWheelScrollViewState extends State<listWheelScrollView> {
  var arrNumber = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:Center(
        child: ListWheelScrollView(
          itemExtent: 100,
          children:
            arrNumber
                .map((e) => Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        child: Center(child: Text('$e',style: TextStyle(color: Colors.white,fontSize: 20),)),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ))
                .toList(),

        ),
      ),
    );
  }
}