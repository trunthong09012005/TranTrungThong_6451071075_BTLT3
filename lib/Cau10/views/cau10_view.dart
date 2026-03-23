import 'package:flutter/material.dart';
import '../widget/item_tile.dart';

class Cau10View extends StatefulWidget {
  const Cau10View({super.key});

  @override
  State<Cau10View> createState() => _Cau10ViewState();
}

class _Cau10ViewState extends State<Cau10View> {
  List<String> items =
  List.generate(4, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Delete")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, i) {
          return Dismissible(
            key: Key(items[i]),
            onDismissed: (_) {
              setState(() => items.removeAt(i));
            },
            child: ItemTile(title: items[i]),
          );
        },
      ),
    );
  }
}