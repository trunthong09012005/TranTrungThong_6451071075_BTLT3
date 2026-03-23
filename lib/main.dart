import 'package:flutter/material.dart';

import 'Cau1/apps/cau1_app.dart';
import 'Cau2/apps/cau2_app.dart';
import 'Cau3/apps/cau3_app.dart';
import 'Cau4/apps/cau4_app.dart';
import 'Cau5/apps/cau5_app.dart';
import 'Cau6/apps/cau6_app.dart';
import 'Cau7/apps/cau7_app.dart';
import 'Cau8/apps/cau8_app.dart';
import 'Cau9/apps/cau9_app.dart';
import 'Cau10/apps/cau10_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void open(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Bài 1 - Tap cơ bản", "page": const Cau1App()},
      {"title": "Bài 2 - Double Tap", "page": const Cau2App()},
      {"title": "Bài 3 - Long Press", "page": const Cau3App()},
      {"title": "Bài 4 - Tap Counter", "page": const Cau4App()},
      {"title": "Bài 5 - Pointer Event", "page": const Cau5App()},
      {"title": "Bài 6 - Drag Circle", "page": const Cau6App()},
      {"title": "Bài 7 - Custom Slider", "page": const Cau7App()},
      {"title": "Bài 8 - Grid Gesture", "page": const Cau8App()},
      {"title": "Bài 9 - Swipe Image", "page": const Cau9App()},
      {"title": "Bài 10 - Swipe Delete", "page": const Cau10App()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Demo - 10 Bài"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.touch_app),
            title: Text(items[index]["title"] as String),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () =>
                open(context, items[index]["page"] as Widget),
          );
        },
      ),
    );
  }
}