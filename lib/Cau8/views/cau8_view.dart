import 'package:flutter/material.dart';
import '../widget/grid_item.dart';

class Cau8View extends StatefulWidget {
  const Cau8View({super.key});

  @override
  State<Cau8View> createState() => _Cau8ViewState();
}

class _Cau8ViewState extends State<Cau8View> {
  List<Color> colors =
  List.generate(9, (_) => Colors.blue);

  void change(int i) {
    setState(() {
      colors[i] =
      colors[i] == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid Gesture")),
      body: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (_, i) =>
            GridItem(color: colors[i], onTap: () => change(i)),
      ),
    );
  }
}