import 'package:flutter/material.dart';
import '../widget/image_page.dart';

class Cau9View extends StatelessWidget {
  const Cau9View({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'https://picsum.photos/300/200?1',
      'https://picsum.photos/300/200?2',
      'https://picsum.photos/300/200?3',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Images")),
      body: PageView(
        children:
        images.map((e) => ImagePage(url: e)).toList(),
      ),
    );
  }
}