import 'package:flutter/material.dart';

class TapBox extends StatelessWidget {
  final VoidCallback onTap;

  const TapBox({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.blue,
      ),
    );
  }
}