import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class themeManagement extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Radhe Krishna',style: Theme.of(context).textTheme.displayLarge,),
            Text('Radhe Krishna',style: Theme.of(context).textTheme.displayMedium,),

            SizedBox(height: 20,),
            Text('Radhe Krishna',style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.blue),),
            Text('Radhe Krishna',style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.grey)),
          ],
        ),
      ),

    );
  }

}