import 'package:flutter/material.dart';
import '../widget/press_card.dart';

class Cau3View extends StatelessWidget {
  const Cau3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Long Press")),
      body: Center(
        child: PressCard(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Long press detected")),
            );
          },
        ),
      ),
    );
  }
}