import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/button.dart';
import '../styles/color.dart';

class sharedPref extends StatefulWidget
{
  @override
  State<sharedPref> createState() => _sharedPrefState();
}

class _sharedPrefState extends State<sharedPref> {
  var controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _focusNode;
    return Scaffold(
      body: Container(
        color: background,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              FittedBox(alignment: Alignment.center,child: Text("No Saved",maxLines: 1,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w100,fontSize: 50,fontFamily: 'bold'),)),
              SizedBox(height: 30,),
              Container(
                width: 300,
                child: TextField(
                  focusNode: _focusNode,
                  controller: controllerText,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    fillColor: buttonBackground,
                    prefixIcon: Container(height: 50,width: 70,child: Center(child: FaIcon(FontAwesomeIcons.user,color: secondaryText,size: 20,))),

                    hintText: 'Enter Your Name',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,

                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                            style: BorderStyle.solid
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          color: Colors.blueAccent,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          width: 2,
                          color: Colors.grey,
                        )
                    ),

                  ),


                ),

              ),

              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

              }, child: Text("Save Value"),style: buttonPrimary,),



            ],
          ),
        ),
      ),
    );
  }
}