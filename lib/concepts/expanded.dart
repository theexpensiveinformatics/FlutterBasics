import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expanded extends StatelessWidget{
  @override
  Widget build( context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body:Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                  border: Border.all(width: 10,color: Colors.white38),
                  color: Colors.red
                ),
              ),
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white38),
                    color: Colors.deepPurple
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.amber
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white38),
                    color: Colors.blue
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white38),
                    color: Colors.red
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.deepPurple
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.amber
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white38),
                    color: Colors.blue
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,

                decoration: BoxDecoration(
                    border: Border.all(width: 10,color: Colors.white38),
                    color: Colors.red
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.deepPurple
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.amber
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.blue
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.red
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.deepPurple
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.amber
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: 50,
                  height: 100,

                  decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white38),
                      color: Colors.blue
                  ),
                ),
              ),

            ],
          ),
        ],
      ),


    );
  }

}