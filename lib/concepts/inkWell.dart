import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';

// void main()
// {
//   runApp(inkWell());
//   Fluttertoast.showToast; // Initialize the Fluttertoast library
// }


class inkWell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: InkWell(
              onTap: ()
              {
                final snackBar = SnackBar(content: Text ('On Tap'),backgroundColor: Colors.blue,duration: Duration(seconds: 2),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                print("ontap");
              },
              onLongPress: (){
                final snackBar=SnackBar(content: Text("on LongPress ",style: TextStyle(color: Colors.black87),), backgroundColor: Colors.white,elevation: 10,duration: Duration(seconds: 2),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                print("onLongPress");

              },
              onDoubleTap: (){
                final snackBar=SnackBar(content: Text("on Double Press"),backgroundColor: Colors.red,duration: Duration(seconds: 1),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              },


              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all( Radius.elliptical(35,40)),
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.red,
                    width: 3
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurStyle: BlurStyle.normal,
                      color: Color(0x45888888),
                      offset: Offset(0, 20),
                      blurRadius: 40,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Text("Click Me",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }

}