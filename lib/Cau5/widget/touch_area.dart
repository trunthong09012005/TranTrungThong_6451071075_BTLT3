import 'package:flutter/material.dart';

class TouchArea extends StatelessWidget {
  final Function(PointerDownEvent) onTouch;

  const TouchArea({super.key, required this.onTouch});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onTouch,
      child: Container(color: Colors.grey[300]),
    );
  }
}