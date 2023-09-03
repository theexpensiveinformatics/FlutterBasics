import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(height: 50),

          Container(
            margin: EdgeInsets.all(15),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue, // Set your desired background color
              borderRadius: BorderRadius.circular(10), // Set the border radius
            ),
          ),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.red, // Set your desired background color
                      borderRadius: BorderRadius.circular(10), // Set the border radius
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue, // Set your desired background color
                      borderRadius: BorderRadius.circular(10), // Set the border radius
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.red, // Set your desired background color
                      borderRadius: BorderRadius.circular(10), // Set the border radius
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue, // Set your desired background color
                borderRadius: BorderRadius.circular(10), // Set the border radius
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red, // Set your desired background color
                borderRadius: BorderRadius.circular(10), // Set the border radius
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue, // Set your desired background color
                borderRadius: BorderRadius.circular(10), // Set the border radius
              ),
            ),

          ],
        ),
      )

    );
  }
}
