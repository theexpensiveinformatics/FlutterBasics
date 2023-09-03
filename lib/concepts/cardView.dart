import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Card(
          elevation: 20,
          shadowColor: Colors.grey,
          color: Colors.white,
          surfaceTintColor: Colors.white,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Radha Krishna",style: Theme.of(context).textTheme.displayLarge,),
          ),

        ),
      ),
    );
  }

}