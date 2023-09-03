import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tweenAnimation extends StatefulWidget
{
  @override
  State<tweenAnimation> createState() => _tweenAnimationState();
}

class _tweenAnimationState extends State<tweenAnimation> with SingleTickerProviderStateMixin{

  late Animation animation; // late mean animation object  initialized  after some time
  late AnimationController animationController;

  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin:0.0 ,end:200.0 ).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue,end: Colors.purple).animate(animationController);

    animationController.addListener(() {
     // addListener due to listen value that are changing
     print(animation.value);

     setState(() {

     });
    });

    animationController.forward(); // start animation

  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }
}