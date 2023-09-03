import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rowAndColumns extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,


        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,//evenly -> same and around -> in around half at right and half at left
                                                            //between no space at ending point
            crossAxisAlignment: CrossAxisAlignment.end, // change value here
            children: [


              Text("Radhe"),
              ElevatedButton(onPressed: (){}, child: Text("Krishna")),
              Text("Mahadev"),
              ElevatedButton(onPressed: (){}, child: Text("Mahadev")),
            ],
          ),
        ),
      ),

    );

  }

}