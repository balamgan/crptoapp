import 'package:flutter/material.dart';

/// Flutter code sample for [FadeTransition].


class CustomFadeTransition extends StatefulWidget {
   const CustomFadeTransition({super.key, 
   required this.child,  this.seconds});
   final Widget? child;
   final int? seconds;
  @override
  State<CustomFadeTransition> createState() => _FadeTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].

class _FadeTransitionState extends State<CustomFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration:  Duration(seconds: widget.seconds??2),
    vsync: this,
  )..forward();//..repeat(reverse: false);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
 

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: FadeTransition(
        opacity: _animation,
        child: widget.child
      ),
    );
  }
}
