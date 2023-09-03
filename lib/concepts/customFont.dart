import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customFont extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/gredient.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Stay Focused",style: TextStyle(fontFamily: "bold",color: Colors.white,fontSize: 30)),
                  SizedBox(height: 20,),
                  Text("Stay Focused",style: TextStyle(fontFamily: "calSans",color: Colors.white,fontSize: 30)),
                  SizedBox(height: 20,),
                  Text("Stay Focused",style: TextStyle(fontFamily: "thic",color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}