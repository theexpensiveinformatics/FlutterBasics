import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/concepts/showRunTimeData.dart';
import 'package:flutter_demo/styles/button.dart';
import 'package:flutter_demo/styles/color.dart';

class runTimeDataPassing extends StatefulWidget
{

  @override
  State<runTimeDataPassing> createState() => _runTimeDataPassingState();
}

class _runTimeDataPassingState extends State<runTimeDataPassing> {

  var controllerName = TextEditingController();
  FocusNode _focusNode = FocusNode();


   @override
   void dispose() {
     _focusNode.dispose();
     super.dispose();
   }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold (
      body: Container(
        color: background,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter Your Name ",style: Theme.of(context).textTheme.displayMedium,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300,
                    height: 50,
                    child:
                  TextField(

                      focusNode: _focusNode,
                    controller: controllerName,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Krushang',hintStyle: TextStyle(fontSize: 12),
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

                      )
                    ),



                  ),
                ),

              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> showRunTimeData(controllerName.text.toString())));}, child: Text('Go'),style: buttonPrimary,)
              ],
          ),
        ),
      ),
    );
  }
}