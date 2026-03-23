import 'package:flutter/material.dart';
import '../widget/color_box.dart';

class Cau2View extends StatefulWidget {
  const Cau2View({super.key});

  @override
  State<Cau2View> createState() => _Cau2ViewState();
}

class _Cau2ViewState extends State<Cau2View> {
  Color color = Colors.blue;

  void changeColor() {
    setState(() {
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Double Tap")),
      body: Center(
        child: ColorBox(
          color: color,
          onDoubleTap: changeColor,
        ),
      ),
    );
  }
}