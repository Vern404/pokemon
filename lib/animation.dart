import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  // late Animation _animation;
  late Animation _scaleAnimation;
  late Animation _rotateAnimation;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    // _animation= CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);
    _animationController.addListener(() => setState(() { }));
    _animationController.repeat(reverse: true);
    _scaleAnimation = CurvedAnimation(parent: _animationController, curve: Interval(0.25,0.75));
    _rotateAnimation = Tween<double> (begin: 0.0, end: (2 * pi)).animate(
        CurvedAnimation(parent: _animationController, curve: Interval(0.5,1.0)));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
        body: Center(

            // Transform.scale(
            //   scale:
            //   _animation.value,
            //   child: Container(
            //     color: Colors.deepOrange,
            //     width: 500.0,
            //     height: 500.0,
            //   ),
            // ),
            child: Transform.rotate(
              angle: _rotateAnimation.value,
            child: Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepOrange,
                width: 50.0,
                height: 50.0,
              ),
            ),)
        )
    );
  }
}

