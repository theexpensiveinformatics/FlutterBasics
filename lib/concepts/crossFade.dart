import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class crossFade extends StatefulWidget
{

  @override
  State<crossFade> createState() => _crossFadeState();
}

class _crossFadeState extends State<crossFade> {
  bool isFirst = true;
@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2),(){reload();});
  }


  void reload()
  {

    setState(() {


      isFirst=false;

    });
  }
  // CrossFadeState isFirst =
  @override
  Widget build (BuildContext context)
  {
   return Scaffold(
     body: Center(
       child: AnimatedCrossFade(
         duration: Duration(seconds: 2),
         firstChild: Image.asset('assets/images/demo.png'),
         secondChild: Image.asset('assets/images/avtar.png'),
       crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
       ),
     ),
   );
  }
}