import 'package:flutter/material.dart';
import '../widget/custom_slider.dart';

class Cau7View extends StatefulWidget {
  const Cau7View({super.key});

  @override
  State<Cau7View> createState() => _Cau7ViewState();
}

class _Cau7ViewState extends State<Cau7View> {
  double value = 0;

  void update(DragUpdateDetails d) {
    setState(() {
      value += d.delta.dx;
      value = value.clamp(0, 280);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Slider")),
      body: Center(
        child: CustomSlider(value: value, onDrag: update),
      ),
    );
  }
}