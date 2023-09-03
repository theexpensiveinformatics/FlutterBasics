import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dateAndTime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Time : $time'),
            Text('Current month : ${time.month}'),
            Text('Current Sec : ${time.second}'),
            Text('Current Hour: ${time.hour}'),
            Text('Current Weekday: ${time.weekday}'),
            Text('Current Time: ${time.hour}:${time.minute}:${time.second}'),
            ElevatedButton(onPressed: (){}, child: Text('Get Time')),
            Text('Current Time : ${DateFormat('Hms').format(time)}'),
            Text('Current Time : ${DateFormat('j').format(time)}'),
            Text('Current Time : ${DateFormat('QQQ').format(time)}'),
            Text('Current Time : ${DateFormat('jms').format(time)}'),
          ],
        ),
      ),


    );
  }

}