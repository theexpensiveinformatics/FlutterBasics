import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/styles/color.dart';


class rangeSlider extends StatefulWidget{

  @override
  State<rangeSlider> createState() => _rangeSliderState();
}

class _rangeSliderState extends State<rangeSlider> {

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context)
  {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold (
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 50,
          min: 0,
          max: 100,
          onChanged: (RangeValues newValue) { values= newValue; setState(() {});},
          activeColor: Colors.blueAccent,
          inactiveColor: Colors.black45,
        ),

      ),
    );
  }
}