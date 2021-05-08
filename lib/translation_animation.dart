import 'package:flutter/material.dart';

class TranslationAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;

  TranslationAnimation(
      {@required this.child, @required this.duration, @required this.delay});
  @override
  _TranslationAnimationState createState() => _TranslationAnimationState();
}

class _TranslationAnimationState extends State<TranslationAnimation> {
  double translation = 80;
  double opacity = .0;

  _start() {
    setState(() {
      translation = 0;
      opacity = 1;
    });
  }

  @override
  void initState() {
    Future.delayed(widget.delay, _start);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: widget.duration,
      opacity: opacity,
      curve: Curves.easeOut,
      child: AnimatedContainer(
        duration: widget.duration,
        curve: Curves.easeOut,
        child: widget.child,
        transform: Matrix4.identity()..translate(translation),
      ),
    );
  }
}
