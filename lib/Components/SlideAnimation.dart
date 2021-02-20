import 'package:flutter/material.dart';

enum SlideDirection { fromTop, fromLeft, fromRight, fromBottom }

class SlideAnimation extends StatefulWidget {
  final int position;
  final int itemCount;
  final Widget child;
  final SlideDirection slideDirection;
  final AnimationController animationController;

  SlideAnimation({
    @required this.position,
    @required this.itemCount,
    @required this.slideDirection,
    @required this.animationController,
    @required this.child,
  });

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> {
  @override
  Widget build(BuildContext context) {
    // we need x and y translation variables to animate items in different direction using our enum
    var _xTranslation = 0.0, _yTranslation = 0.0;

    // we need to declare our animation for fade transition widget
    var _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: widget.animationController,
      // curve for the way you want to animate your list item widget. you can use anything from curves
      curve: Interval((1 / widget.itemCount) * widget.position, 1.0,
          curve: Curves.fastOutSlowIn),
    ));

    widget.animationController.forward();

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (context, child) {
        if (widget.slideDirection == SlideDirection.fromTop) {
          // this will animate items from top with fade transition
          _yTranslation = -50 * (1.0 - _animation.value);
        } else if (widget.slideDirection == SlideDirection.fromBottom) {
          // this will animate items from bottom with fade transition
          _yTranslation = 50 * (1.0 - _animation.value);
        } else if (widget.slideDirection == SlideDirection.fromRight) {
          // this will animate items from right with fade transition
          _xTranslation = 400 * (1.0 - _animation.value);
        } else {
          // this will animate items from left with fade transition
          _xTranslation = -400 * (1.0 - _animation.value);
        }

        return FadeTransition(
          opacity: _animation,
          child: Transform(
            child: widget.child,
            // based on our slide direction and x and y values the widget will animate
            transform:
                Matrix4.translationValues(_xTranslation, _yTranslation, 0.0),
          ),
        );
      },
    );
  }
}
