import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fooAnimation extends StatefulWidget

{
  const fooAnimation({super.key});

  @override
  State<fooAnimation> createState() => _fooAnimationState();
}
var _width=200.0;
var _height=100.0;
bool v = true;

Decoration myDecor = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.blue,
);

class _fooAnimationState extends State<fooAnimation> {
  @override
  Widget build(BuildContext context)
  {



    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              // curve: Curves.easeInOutCirc,

              curve: Curves.easeOutQuart,
              duration: Duration(seconds: 2),
              height: _height,
              width: _width,
              decoration: myDecor
            ),
          ),

          ElevatedButton(
              onPressed: (){


                setState(() {
                  if (v == true) {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    );
                    v = false;
                  } else {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100),
                    );
                    v = true;
                  }
                });



              },
              child: Text("Animate"))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: fooAnimation()));
}