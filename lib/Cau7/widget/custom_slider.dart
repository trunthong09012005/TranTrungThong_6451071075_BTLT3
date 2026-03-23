import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final Function(DragUpdateDetails) onDrag;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onDrag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: onDrag,
      child: Stack(
        children: [
          Container(width: 300, height: 4, color: Colors.grey),
          Positioned(
            left: value,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}