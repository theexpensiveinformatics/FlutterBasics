import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dateAndTimePicker extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () async{
              DateTime? datePicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2022),
              );

              if (datePicked != null) {
                print(datePicked);
              }
            }, child: Text('Pick Date')),

            SizedBox(height: 30,),
            Text('Select Time'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text('Pick Time'))
          ],
        ),
      ),

    );
  }

}