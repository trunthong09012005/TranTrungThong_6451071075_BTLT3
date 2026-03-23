import 'package:flutter/material.dart';
import '../widget/tap_box.dart';

class Cau1View extends StatelessWidget {
  const Cau1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap Demo')),
      body: Center(
        child: TapBox(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You tapped the box!'),
              ),
            );
          },
        ),
      ),
    );
  }
}