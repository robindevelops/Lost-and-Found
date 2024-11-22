import 'dart:async';
import 'package:flutter/material.dart';

class ShowUpAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  const ShowUpAnimation({super.key, required this.child, required this.delay});

  @override
  State<ShowUpAnimation> createState() => _ShowUpAnimationState();
}

class _ShowUpAnimationState extends State<ShowUpAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    _timer = Timer(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _animController.forward();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animController,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
