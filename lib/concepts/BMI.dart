import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/styles/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/color.dart';

class BMI extends StatefulWidget
{
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var controllerW = TextEditingController();
  var controllerF = TextEditingController();
  var controllerI = TextEditingController();
  var result="";
  var bgColor=background;
  var msg ="Welcome";

  FocusNode _focusNode = FocusNode();
  @override
  Widget build (BuildContext context)


  {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI Calculator",style: Theme.of(context).textTheme.displayLarge,),
              SizedBox(height: 12,),
              Container(
                width: 300,
                child: TextField(
                    focusNode: _focusNode,
                    controller: controllerW,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      prefixIcon: Container(height: 50,width: 70,child: Center(child: FaIcon(FontAwesomeIcons.scaleBalanced,color: secondaryText,size: 20,))),

                      hintText: 'Enter Weight',hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: _focusNode.hasFocus ? Colors.yellow : background,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 2,
                              style: BorderStyle.solid
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:  BorderSide(
                            color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:  BorderSide(
                            width: 2,
                            color: Colors.white,
                          )
                      ),

                    ),


                ),

              ),

              SizedBox(height: 12,),
              Container(
                width: 300,
                child: TextField(
                  // focusNode: _focusNode,
                  controller: controllerF,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    prefixIcon: Container(height: 50,width: 70,child: Center(child: FaIcon(FontAwesomeIcons.sortNumericUp,color: secondaryText,size: 20,))),

                    hintText: 'Enter Ft Value',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                   fillColor: _focusNode.hasFocus ? Colors.yellow : background,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          color: Colors.white,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          width: 2,
                          color: Colors.white,
                        )
                    ),

                  ),


                ),

              ),

              SizedBox(height: 12,),
              Container(
                width: 300,
                child: TextField(
                  // focusNode: _focusNode,
                  controller: controllerI,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    prefixIcon: Container(height: 50,width: 70,child: Center(child: FaIcon(FontAwesomeIcons.listNumeric,color: secondaryText,size: 20,))),

                    hintText: 'Enter Inch Value',hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                   fillColor: _focusNode.hasFocus ? Colors.red.shade900 : background,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          color: Colors.white,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:  BorderSide(
                          width: 2,
                          color: Colors.white,
                        )
                    ),

                  ),


                ),

              ),

              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){

                var wt= controllerW.text.toString();
                var ft= controllerF.text.toString();
                var inch= controllerI.text.toString();

                if(wt!="" && ft!= "" && inch!="")
                  {
                    var iWt=int.parse(wt);
                    var iFt=int.parse(ft);
                    var iInch=int.parse(inch);

                    var tInch = (iFt*12)+iInch;
                    var tCm=tInch*2.54;
                    var tM= tCm/100;
                    var bmi =iWt/(tM*tM);

                    result="Your BMI is : ${bmi.toStringAsFixed(2)}";

                    if(bmi>25)
                      {
                        bgColor=Colors.red.shade50;
                        msg="OVERWEIGHT";
                      }else if(bmi<18)
                        {
                          bgColor=Colors.orange.shade50;
                          msg="UNDERWEIGHT";

                        }else
                          {
                            bgColor=Colors.blue.shade50;
                            msg="COOL";
                          }

                    setState(() {

                    });

                  }else
                    {

                      setState(() {
                        result = "Please fill Required fields";
                      });
                    }


              }, child: Text("Calculate BMI"),style: buttonPrimary,),

              SizedBox(height: 20,),
              Text(result,style: Theme.of(context).textTheme.displayMedium,),
              SizedBox(height: 0,),
              FittedBox(alignment: Alignment.center,child: Text(msg,maxLines: 1,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w100,fontSize: 50,fontFamily: 'bold'),))

            ],
          ),
        ),
      ),

    );
  }
}