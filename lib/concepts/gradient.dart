import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gradient extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],

                    )
                ) ,
                child: Center(child: Text('Normal',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),


            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],
                        begin: FractionalOffset(0.5,0.0),
                        end: FractionalOffset(0.0,1.0),

                    )
                ) ,
                child: Center(child: Text('begin & end',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],

                      stops: [0.0,0.0]

                    )
                ) ,
                child: Center(child: Text('stops',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],

                        stops: [0.0,0.3]

                    )
                ) ,
                child: Center(child: Text('stops',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: RadialGradient(
                        colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],

                    )
                ) ,
                child: Center(child: Text('Radial ',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200,width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: RadialGradient(
                        colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],
                      center: FractionalOffset(0.0,1.0)
                    )
                ) ,
                child: Center(child: Text('Radial Center',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'bold'))),),
            ),

          ],
        ),
      ),
    );
  }
}