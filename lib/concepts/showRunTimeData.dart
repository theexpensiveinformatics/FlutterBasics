import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class showRunTimeData extends StatelessWidget
{

  var nameFromHome;
  showRunTimeData(this.nameFromHome);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
    body: Center(child: Text('Welcome $nameFromHome')),
    );
  }
}