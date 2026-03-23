import 'package:flutter/material.dart';
import '../widget/touch_area.dart';

class Cau5View extends StatefulWidget {
  const Cau5View({super.key});

  @override
  State<Cau5View> createState() => _Cau5ViewState();
}

class _Cau5ViewState extends State<Cau5View> {
  String position = "Touch anywhere";

  void updatePosition(PointerDownEvent event) {
    setState(() {
      position =
      "x: ${event.position.dx.toStringAsFixed(1)}, "
          "y: ${event.position.dy.toStringAsFixed(1)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pointer Event")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(position),
          ),
          Expanded(
            child: TouchArea(onTouch: updatePosition),
          )
        ],
      ),
    );
  }
}