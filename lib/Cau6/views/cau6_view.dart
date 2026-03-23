import 'package:flutter/material.dart';
import '../widget/draggable_circle.dart';

class Cau6View extends StatefulWidget {
  const Cau6View({super.key});

  @override
  State<Cau6View> createState() => _Cau6ViewState();
}

class _Cau6ViewState extends State<Cau6View> {
  double x = 100;
  double y = 100;

  void move(DragUpdateDetails d) {
    setState(() {
      x += d.delta.dx;
      y += d.delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drag Circle")),
      body: Stack(
        children: [
          DraggableCircle(x: x, y: y, onDrag: move),
        ],
      ),
    );
  }
}