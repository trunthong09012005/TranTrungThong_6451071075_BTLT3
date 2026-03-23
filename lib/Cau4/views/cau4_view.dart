import 'package:flutter/material.dart';
import '../widget/tap_button.dart';

class Cau4View extends StatefulWidget {
  const Cau4View({super.key});

  @override
  State<Cau4View> createState() => _Cau4ViewState();
}

class _Cau4ViewState extends State<Cau4View> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tap Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tap count: $count'),
            TapButton(onPressed: () {
              setState(() => count++);
            })
          ],
        ),
      ),
    );
  }
}