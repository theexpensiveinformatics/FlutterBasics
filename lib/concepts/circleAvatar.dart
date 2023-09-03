import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circleAvatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Text('Krushang',style: TextStyle(color: Colors.white),),
              backgroundImage: AssetImage('assets/images/avtar.png'),
              backgroundColor: Colors.red,
              foregroundColor: Colors.red,
              // radius: 100,
              maxRadius: 70,
              minRadius: 50,
              onBackgroundImageError: (exception, stackTrace) => Text('nothing'),
            ),

            SizedBox(height: 50,),

            Container(
              child: const CircleAvatar(
                child: Text('krushang'),
                backgroundImage: AssetImage('assets/images/proPic.png'),
                radius: 50,
                backgroundColor: Colors.purple,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 100
                    ),
                  ]
                  )
              ),



          ],
        ),
      ),
    );
  }

}